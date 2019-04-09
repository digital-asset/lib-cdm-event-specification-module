# Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0

# Delete version headers
/daml 1\.2/d
# Swap type signatures and cons using ~~ as an intermediate substitution
s/::/~~/g
s/:/::/g
s/~~/:/g
# Replace with-syntax wildcards
s/with \.\./{\.\.}/
/^main =/!s/\(.*\) = scenario/\1 = scenario "\1"/
/ActionEnum/!s/Action/Monad/
