#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

stack build --stack-yaml ../libs/with-preprocessor/stack.yaml
stack build --stack-yaml ../libs/with-preprocessor/stack.yaml record-dot-preprocessor

for daml_file in $(find ../../daml/src/ -name '*.daml'); do
    hs_file="${daml_file%.daml}.hs"
    if [[ "$daml_file" == ../../daml/src//Test/* ]]; then
        hs_file="../test/${hs_file#../../daml/src/}"
        mkdir -p "$(dirname $hs_file)"
        ./preprocess.sh "$daml_file" "$hs_file"
    fi

    if [[ "$daml_file" == ../../daml/src//Org/* ]]; then
        hs_file="../src/${hs_file#../../daml/src/}"
        mkdir -p "$(dirname $hs_file)"
        ./preprocess.sh "$daml_file" "$hs_file"
    fi
done
