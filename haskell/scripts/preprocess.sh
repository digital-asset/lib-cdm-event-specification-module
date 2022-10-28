#!/bin/bash
# Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

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
if grep 'script' "$HS_FILE" | grep -q -v "main" || [[ "$HS_FILE" == *Main.hs ]]; then
    sed -i.bak "s|main = script|main = describe \"${MODULE_NAME}\"|" "$HS_FILE"
else
    sed -i.bak "s|main = script|main = script \"${MODULE_NAME}\"|" "$HS_FILE"
fi
rm "$HS_FILE".bak
stack exec --stack-yaml haskell/libs/with-preprocessor/stack.yaml with-preprocessor "$HS_FILE" "$HS_FILE"
stack exec --stack-yaml haskell/libs/with-preprocessor/stack.yaml record-dot-preprocessor "$HS_FILE" "$HS_FILE"
