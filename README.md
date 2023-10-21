# Neodoc-luals-definition-gen

Generate Lua Language Server Definition files from NeoDoc's json output.

Intended to create definition files for the TTT2 codebase and make those available. This should
allow addon devs to get autocompletion and diagnostics for TTT2 originated datastructures.

## Project Status

More or less WIP but working so far.

- No tests
- Output definition files aren't validated for correctness (neither automated nor manually)
- Error handling is almost completely missing
- No CLI usage and/or help texts (i don't want to pull in `clap`, at least for now)
- Terrible binary name

Developed against [NeoDoc](https://github.com/TTT-2/NeoDoc) v0.1.5

## Usage

```shell
$ neodoc-luals-definition-gen INPUT_DIR OUTPUT_DIR
```

The `INPUT_DIR` should be the output dir of NeoDoc. In the case of TTT2 the contents should look
like this:

```
class/
createconvar/
hook/
module/
overview.json
search.json
```

The `OUTPUT_DIR` is where the generated lua definition files will be placed and needs to exist
prior to execution.
