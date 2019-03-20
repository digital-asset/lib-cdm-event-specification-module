#!/bin/bash
shopt -s globstar
for daml_file in daml/**/*.daml; do
    hs_file="${daml_file%.daml}.hs"
    hs_file="haskell/src/${hs_file#daml/}"
    mkdir -p "$(dirname $hs_file)"
    ./preprocess.sh < "$daml_file" > "$hs_file"
done
