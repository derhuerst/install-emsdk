#!/bin/bash
set -e
set -o pipefail

target_dir="$(realpath ${1:-emsdk})"
echo "installing the Emscripten SDK into $target_dir"
set -x

mkdir -p $target_dir
cd $target_dir

git clone --depth 3 -q https://github.com/emscripten-core/emsdk.git .
./emsdk install latest
./emsdk activate --embedded latest
