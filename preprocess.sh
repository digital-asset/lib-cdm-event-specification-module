#!/bin/bash
set -euo pipefail

sed -f replace.sed | stack exec --stack-yaml with-preprocessor/stack.yaml with-preprocessor
