#!/bin/bash
set -euo pipefail

cd "$(dirname "$0")"

stack build --stack-yaml ../libs/with-preprocessor/stack.yaml
stack build --stack-yaml ../libs/with-preprocessor/stack.yaml record-dot-preprocessor

while IFS= read -r -d '' daml_file
do
    hs_file="${daml_file%.daml}.hs"
    if [[ "$daml_file" == ../../daml/src//Test/* ]]; then
        hs_file="../test/${hs_file#../../daml/src/}"
        mkdir -p "$(dirname "$hs_file")"
        ./preprocess.sh "$daml_file" "$hs_file"
    fi

    if [[ "$daml_file" == ../../daml/src//Org/* ]]; then
        hs_file="../src/${hs_file#../../daml/src/}"
        mkdir -p "$(dirname "$hs_file")"
        ./preprocess.sh "$daml_file" "$hs_file"
    fi
done <  <(find ../../daml/src/ -name '*.daml' -print0)
