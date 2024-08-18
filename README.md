# Neodoc-luals-definition-gen

Generate Lua Language Server Definition files from NeoDoc's json output.

Intended to create definition files for the TTT2 codebase and make those available.
This should allow addon devs to get autocompletion and diagnostics for TTT2 datastructures.

## Project Status

More or less WIP but working so far.

- No tests
- Output definition files aren't validated for correctness
- Terrible binary name

Developed against [NeoDoc](https://github.com/TTT-2/NeoDoc) v0.1.6

## Usage

```shell
neodoc-luals-definition-gen INPUT_DIR OUTPUT_DIR
```

The `INPUT_DIR` should be the output directory of NeoDoc.
In the case of TTT2 the contents should look like this:

```ls
class/
createconvar/
hook/
module/
overview.json
search.json
```

Generated lua definition files will be placed into `OUTPUT_DIR`.
This directory needs to exist prior to execution.
