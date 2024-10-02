use askama::Template;
use glob::glob;
use serde_json::Value;
use std::env;
use std::fs;
use std::fs::File;
use std::io::{BufReader, BufWriter, Write};
use std::path::PathBuf;
use tracing::{error, info, warn};

pub mod neodoc_parser;
use neodoc_parser::{neodoc_to_func_definition, read_neodoc_json, LuaModuleFile};

const USAGE_HELP: &str = "Usage: neodoc-luals-definition-gen <INPUT_DIR> <OUTPUT_DIR>";

fn init_tracing() {
    tracing_subscriber::fmt()
        .without_time()
        .with_target(false)
        .with_max_level(tracing::Level::WARN)
        .init();
}

fn handle_args() -> (fs::ReadDir, String) {
    let args: Vec<String> = env::args().collect();
    if args.len() != 3 {
        error!("Mismatched amount of arguments");
        println!("{USAGE_HELP}");
        std::process::exit(1)
    }
    let input_dir = match fs::read_dir(&args[1]) {
        Ok(input_dir) => input_dir,
        Err(e) => {
            error!("Could not read input directory: {}", e);
            std::process::exit(1)
        }
    };
    let output_dir = match PathBuf::from(&args[2]).canonicalize() {
        Ok(output_dir) => output_dir.to_string_lossy().to_string(),
        Err(e) => {
            error!("Could not get path for output directory: {}", e);
            std::process::exit(1)
        }
    };

    (input_dir, output_dir)
}

fn main() {
    init_tracing();

    let (input_dir, output_dir) = handle_args();

    for wrapper in input_dir {
        let wrapper = match wrapper {
            Ok(wrapper) => wrapper.path(),
            Err(e) => {
                warn!("Could not read wrapper dir: {}", e);
                continue;
            }
        };
        if wrapper.is_dir() {
            for section in fs::read_dir(&wrapper).unwrap() {
                let section = match section {
                    Ok(section) => section.path(),
                    Err(e) => {
                        warn!("Could not read section dir: {}", e);
                        continue;
                    }
                };
                if section.is_dir() {
                    let detail_json_path =
                        PathBuf::from(format!("{}/detail.json", section.to_string_lossy()));
                    let buf_reader = BufReader::new(
                        File::open(detail_json_path).expect("Error while openening detail.json"),
                    );
                    let detail_json: Value = serde_json::from_reader(buf_reader)
                        .unwrap_or_else(|_| Value::String(String::new()));
                    let module_name: Option<String> = detail_json
                        .get("data")
                        .and_then(|value| value.get("name"))
                        .map(|value| value.to_string().replace('"', ""));
                    for datastructure in fs::read_dir(&section).unwrap() {
                        let datastructure = match datastructure {
                            Ok(datastructure) => datastructure.path(),
                            Err(e) => {
                                warn!("Could not read datastructure dir: {}", e);
                                continue;
                            }
                        };
                        if datastructure.is_dir() {
                            let mut lua_definition = LuaModuleFile {
                                wrapper: wrapper
                                    .file_name()
                                    .map(|w| w.to_string_lossy().to_string()),
                                section: module_name.clone(),
                                functions: vec![],
                            };
                            for neodoc_func in glob(
                                &format!("{}/**/*.json", datastructure.to_string_lossy()).clone(),
                            )
                            .expect("Reading glob pattern failed.")
                            {
                                match neodoc_func {
                                    Ok(path) => {
                                        if path.file_name().is_some_and(|x| x.ne("detail.json")) {
                                            info!("Reading {:?}", path);
                                            match read_neodoc_json(path) {
                                                Some(function) => lua_definition
                                                    .functions
                                                    .push(neodoc_to_func_definition(function)),
                                                None => continue,
                                            };
                                        }
                                    }
                                    Err(e) => error!("{:?}", e),
                                }
                            }
                            let filepath = format!(
                                "{}/{}.lua",
                                &output_dir,
                                section
                                    .file_name()
                                    .expect("This should always be a regular file.")
                                    .to_string_lossy()
                            );
                            let file = match File::create(&filepath) {
                                Ok(file) => file,
                                Err(e) => {
                                    error!("Error creating file at {} : {}", &filepath, e);
                                    continue;
                                }
                            };
                            render_definition_file(file, &filepath, &lua_definition);
                        }
                    }
                }
            }
        }
    }
}

fn render_definition_file(file: File, filepath: &String, lua_def: &LuaModuleFile) {
    let mut buf_writer = BufWriter::new(file);

    let template_str = match lua_def.render() {
        Ok(template_str) => template_str,
        Err(e) => {
            error!("Could not render template for filepath {}: {}", filepath, e);
            return;
        }
    };

    match write!(buf_writer, "{}", &template_str) {
        Ok(()) => (),
        Err(e) => {
            error!("Could not write template for filepath {}: {}", filepath, e);
            return;
        }
    };

    match buf_writer.flush() {
        Ok(()) => (),
        Err(e) => {
            error!(
                "Could not flush writer for template at filepath {}: {}",
                filepath, e
            );
        }
    };
}
