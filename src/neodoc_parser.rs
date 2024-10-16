use askama::Template;
use serde::Deserialize;
use std::fmt::{Display, Formatter};
use std::fs::File;
use std::io::BufReader;
use std::path::PathBuf;
use tracing::warn;

const TTT2_REPO_URL: &str = "https://github.com/TTT-2/TTT2/tree/master";

pub fn read_neodoc_json(path: PathBuf) -> Option<NeodocFuncDefinition> {
    let file_open = File::open(&path);
    let file = match file_open {
        Ok(file) => file,
        Err(_e) => {
            warn!(
                "Failed to open file at {}. Skipping.",
                &path.into_os_string().to_string_lossy()
            );
            return None;
        }
    };
    let reader = BufReader::new(file);
    match serde_json::from_reader(reader) {
        Ok(expr) => expr,
        Err(e) => {
            warn!(
                "Cannot deserialize struct from '{}' because of '{}'. Skipping.",
                &path.into_os_string().to_string_lossy(),
                e
            );
            None
        }
    }
}

#[must_use]
pub fn neodoc_to_func_definition(nfd: NeodocFuncDefinition) -> LuaFuncDefinition {
    LuaFuncDefinition {
        name: nfd.name,
        realm: nfd.realm,
        r#return: neodoc_to_lua_return(nfd.params.r#return),
        r#_type: nfd.r#type,
        github_source: get_github_source(&nfd.source),
        params: neodoc_to_lua_params(&nfd.params.param),
        package: nfd.params.internal,
        deprecated: nfd.params.deprecated,
        description: join_description(nfd.params.desc),
        param_list: join_param_list(nfd.params.param),
    }
}

fn neodoc_to_lua_params(params: &Option<Vec<NeodocFuncParam>>) -> Option<Vec<LuaFuncParam>> {
    match params {
        Some(params) => {
            let mut luafuncparams: Vec<LuaFuncParam> = vec![];
            for param in params {
                let luafuncparam = LuaFuncParam {
                    name: param.name.clone(),
                    description: param.description.clone()?,
                    r#type: param.typs.join(", "),
                };
                luafuncparams.push(luafuncparam);
            }

            Some(luafuncparams)
        }
        None => None,
    }
}

fn neodoc_to_lua_return(freturns: Option<Vec<NeodocFuncReturn>>) -> Option<LuaFuncReturn> {
    match freturns {
        Some(freturn) => Some(LuaFuncReturn {
            r#type: freturn.first()?.typs.join("|"),
            description: freturn.first()?.description.clone()?,
        }),
        None => None,
    }
}

fn join_description(descriptions: Option<Vec<NeodocFuncDescription>>) -> String {
    descriptions.map_or_else(String::new, |x| x.iter().map(|y| y.text.clone()).collect())
}

fn join_param_list(params: Option<Vec<NeodocFuncParam>>) -> String {
    params.map_or_else(String::new, |params| {
        let mut namelist = vec![];
        for param in params {
            namelist.push(param.name);
        }
        namelist.join(", ")
    })
}

fn get_github_source(source: &NeodocFuncSource) -> String {
    format!("{TTT2_REPO_URL}{}#L{}", source.file, source.line)
}

#[derive(Debug, Deserialize, Clone, Copy)]
#[serde(rename_all = "lowercase")]
pub enum Realm {
    Client,
    Server,
    Shared,
}

impl Display for Realm {
    fn fmt(&self, f: &mut Formatter<'_>) -> std::fmt::Result {
        match self {
            Self::Client => write!(f, "Client"),
            Self::Server => write!(f, "Server"),
            Self::Shared => write!(f, "Shared"),
        }
    }
}

#[derive(Template, Debug)]
#[template(path = "lua_func_definition.lua.j2", escape = "none")]
pub struct LuaModuleFile {
    pub wrapper: Option<String>,
    pub section: Option<String>,
    pub functions: Vec<LuaFuncDefinition>,
}

#[derive(Debug)]
pub struct LuaFuncDefinition {
    name: String,
    realm: Realm,
    r#return: Option<LuaFuncReturn>,
    r#_type: String,
    github_source: String,
    params: Option<Vec<LuaFuncParam>>,
    package: Option<bool>,
    deprecated: Option<bool>,
    description: String,
    param_list: String,
}

#[derive(Debug, Deserialize)]
pub struct NeodocFuncDefinition {
    name: String,
    realm: Realm,
    #[serde(default)]
    params: NeodocFuncParams,
    source: NeodocFuncSource,
    r#type: String,
    #[serde(rename = "subtype")]
    _subtype: String,
}

#[derive(Debug)]
struct LuaFuncParam {
    name: String,
    r#type: String,
    description: String,
}

#[derive(Debug)]
struct LuaFuncReturn {
    r#type: String,
    description: String,
}

#[derive(Debug, Deserialize)]
struct NeodocFuncSource {
    file: String,
    line: u16,
}

#[derive(Debug, Deserialize, Default)]
struct NeodocFuncParams {
    desc: Option<Vec<NeodocFuncDescription>>,
    internal: Option<bool>,
    deprecated: Option<bool>,
    param: Option<Vec<NeodocFuncParam>>,
    r#return: Option<Vec<NeodocFuncReturn>>,
}

#[derive(Debug, Deserialize)]
struct NeodocFuncDescription {
    text: String,
}

#[derive(Debug, Deserialize)]
struct NeodocFuncParam {
    name: String,
    typs: Vec<String>,
    description: Option<String>,
}

#[derive(Debug, Deserialize)]
struct NeodocFuncReturn {
    typs: Vec<String>,
    description: Option<String>,
}
