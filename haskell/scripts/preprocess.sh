#!/bin/bash
set -euo pipefail

DAML_FILE="$1"
HS_FILE="$2"

cp "$DAML_FILE" "$HS_FILE"
SED_SCRIPT="$(dirname $0)/replace.sed"
sed -i.bak -f "$SED_SCRIPT" "$HS_FILE"
rm "$HS_FILE.bak"
MODULE_NAME="${HS_FILE#haskell/test/}"
MODULE_NAME="${MODULE_NAME%.hs}"
MODULE_NAME="${MODULE_NAME////.}"
if grep 'scenario' "$HS_FILE" | grep -q -v "main" || [[ "$HS_FILE" == *Main.hs ]]; then
    sed -i.bak "s|main = scenario|main = describe \"${MODULE_NAME}\"|" "$HS_FILE"
else
    sed -i.bak "s|main = scenario|main = scenario \"${MODULE_NAME}\"|" "$HS_FILE"
fi
rm "$HS_FILE".bak
stack exec --stack-yaml haskell/libs/with-preprocessor/stack.yaml with-preprocessor "$HS_FILE" "$HS_FILE"
stack exec --stack-yaml haskell/libs/with-preprocessor/stack.yaml record-dot-preprocessor "$HS_FILE" "$HS_FILE"
