-- Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
-- SPDX-License-Identifier: Apache-2.0

module DA.Text where

import Data.Maybe
import Data.Text (Text, stripPrefix)

dropPrefix :: Text -> Text -> Text
dropPrefix prefix t = fromMaybe t (stripPrefix prefix t)
