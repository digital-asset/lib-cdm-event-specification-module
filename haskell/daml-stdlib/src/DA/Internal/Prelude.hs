{-# LANGUAGE PatternSynonyms #-}
module DA.Internal.Prelude
    ( Action(..)
    , (>>=)
    , (=<<)
    , Optional(..)
    , pattern None
    , pattern Some
    ) where

import "base" Prelude

type Action = Monad

type Optional = Maybe

pattern None = Nothing
pattern Some a = Just a
