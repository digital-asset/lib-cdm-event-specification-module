#!/bin/bash
set -euo pipefail

stack build --stack-yaml with-preprocessor/stack.yaml
stack build --stack-yaml with-preprocessor/stack.yaml record-dot-preprocessor

for daml_file in $(find daml/src/ -name '*.daml'); do
    hs_file="${daml_file%.daml}.hs"
    echo $hs_file
    if [[ "$daml_file" == daml/src//Test/* ]]; then
        hs_file="haskell/test/${hs_file#daml/src/}"
    else
        hs_file="haskell/src/${hs_file#daml/src/}"
    fi
    mkdir -p "$(dirname $hs_file)"
    ./preprocess.sh "$daml_file" "$hs_file"
done
