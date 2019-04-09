-- Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
-- SPDX-License-Identifier: Apache-2.0

{-# LANGUAGE PatternSynonyms #-}
module DA.Internal.Prelude
    ( Optional(..)
    , pattern None
    , pattern Some
    ) where

import "base" Prelude

type Optional = Maybe

{-# COMPLETE None, Some #-}
pattern None :: Maybe a
pattern None = Nothing
pattern Some :: a -> Maybe a
pattern Some a = Just a
