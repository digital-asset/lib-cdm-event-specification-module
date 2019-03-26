#!/bin/bash
set -euo pipefail

DAML_FILE="$1"
HS_FILE="$2"

cp "$DAML_FILE" "$HS_FILE"
sed -i "" -f replace.sed "$HS_FILE"
MODULE_NAME="${HS_FILE#haskell/test/}"
MODULE_NAME="${MODULE_NAME%.hs}"
MODULE_NAME="${MODULE_NAME////.}"
if grep 'scenario' "$HS_FILE" | grep -q -v "main" || [[ "$HS_FILE" == *Main.hs ]]; then
    sed -i "" "s|main = scenario|main = describe \"${MODULE_NAME}\"|" "$HS_FILE"
else
    sed -i "" "s|main = scenario|main = scenario \"${MODULE_NAME}\"|" "$HS_FILE"
fi
stack exec --stack-yaml with-preprocessor/stack.yaml with-preprocessor "$HS_FILE" "$HS_FILE"
stack exec --stack-yaml with-preprocessor/stack.yaml record-dot-preprocessor "$HS_FILE" "$HS_FILE"
