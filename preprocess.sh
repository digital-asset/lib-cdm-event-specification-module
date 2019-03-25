#!/bin/bash
set -euo pipefail

DAML_FILE="$1"
HS_FILE="$2"

cp "$DAML_FILE" "$HS_FILE"
sed -i -f replace.sed "$HS_FILE"
stack exec --stack-yaml with-preprocessor/stack.yaml with-preprocessor "$HS_FILE" "$HS_FILE"
stack exec --stack-yaml with-preprocessor/stack.yaml record-dot-preprocessor "$HS_FILE" "$HS_FILE"
