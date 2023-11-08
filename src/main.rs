use anyhow::Result;
use askama::Template;
use glob::glob;
use serde_json::Value;
use std::env;
use std::fs;
use std::fs::File;
use std::io::{BufReader, BufWriter, Write};
use std::path::PathBuf;
use tracing::{error, info};

mod neodoc_parser;
use neodoc_parser::*;

fn main() {
    tracing_subscriber::fmt()
        .without_time()
        .with_target(false)
        .with_max_level(tracing::Level::WARN)
        .init();
    let args: Vec<String> = env::args().collect();
    let input_dir = &args[1];
    let output_dir = PathBuf::from(&args[2])
        .canonicalize()
        .expect("Could not get canonicalized path for output directory. Does the directory exist?")
        .to_string_lossy()
        .to_string();

    for wrapper in fs::read_dir(input_dir).unwrap() {
        let wrapper = wrapper.unwrap().path();
        if wrapper.is_dir() {
            for section in fs::read_dir(&wrapper).unwrap() {
                let section = section.unwrap().path();
                if section.is_dir() {
                    let detail_json_path =
                        PathBuf::from(format!("{}/detail.json", section.to_string_lossy()));
                    let buf_reader = BufReader::new(
                        File::open(detail_json_path).expect("Error while openening detail.json"),
                    );
                    let detail_json: Value = serde_json::from_reader(buf_reader).unwrap();
                    let module_name: Option<String> = detail_json
                        .get("data")
                        .and_then(|value| value.get("name"))
                        .map(|value| value.to_string().replace('"', ""));
                    for datastructure in fs::read_dir(&section).unwrap() {
                        let datastructure = datastructure.unwrap().path();
                        if datastructure.is_dir() {
                            let mut lua_definition = LuaModuleFile {
                                wrapper: wrapper
                                    .file_name()
                                    .map(|w| w.to_string_lossy().to_string()),
                                section: module_name.clone(),
                                functions: vec![],
                            };
                            for neodoc_func in glob(
                                &format!("{}/*/*.json", datastructure.to_str().unwrap())
                                    .to_string(),
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
                                section.file_name().unwrap().to_string_lossy()
                            );
                            let file = File::create(&filepath).unwrap();
                            match render_definition_file(file, lua_definition) {
                                Ok(()) => continue,
                                Err(e) => error!("Error writing {} : {}", &filepath, e),
                            }
                        }
                    }
                }
            }
        }
    }
}

fn render_definition_file(file: File, lua_def: LuaModuleFile) -> Result<()> {
    let mut buf_writer = BufWriter::new(file);

    let template_str = lua_def.render()?;
    write!(buf_writer, "{}", &template_str)?;

    buf_writer.flush()?;
    Ok(())
}
