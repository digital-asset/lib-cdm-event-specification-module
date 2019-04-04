#!/bin/bash
# Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

set -euo pipefail

cd "$(dirname "$0")"/../..

stack build --stack-yaml haskell/libs/with-preprocessor/stack.yaml
stack build --stack-yaml haskell/libs/with-preprocessor/stack.yaml record-dot-preprocessor

while IFS= read -r -d '' daml_file
do
    hs_file="${daml_file%.daml}.hs"
    if [[ "$daml_file" == daml/src/Test/* ]]; then
        hs_file="haskell/test/${hs_file#daml/src/}"
        mkdir -p "$(dirname $hs_file)"
        ./haskell/scripts/preprocess.sh "$daml_file" "$hs_file"
    else
        hs_file="haskell/src/${hs_file#daml/src/}"
        mkdir -p "$(dirname $hs_file)"
        ./haskell/scripts/preprocess.sh "$daml_file" "$hs_file"
    fi
done <  <(find daml/src/ -name '*.daml' -print0)
