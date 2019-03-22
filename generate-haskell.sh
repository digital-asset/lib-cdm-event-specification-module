#!/bin/bash
shopt -s globstar

stack build --stack-yaml with-preprocessor/stack.yaml
stack build --stack-yaml with-preprocessor/stack.yaml record-dot-preprocessor

for daml_file in daml/**/*.daml; do
    hs_file="${daml_file%.daml}.hs"
    if [[ "$daml_file" == daml/Test/* ]]; then
        hs_file="haskell/test/${hs_file#daml/}"
    else
        hs_file="haskell/src/${hs_file#daml/}"
    fi
    mkdir -p "$(dirname $hs_file)"
    ./preprocess.sh < "$daml_file" > "$hs_file"
    stack exec --stack-yaml with-preprocessor/stack.yaml record-dot-preprocessor "$hs_file" "$hs_file"
done
