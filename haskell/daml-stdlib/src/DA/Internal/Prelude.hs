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

{-# COMPLETE None, Some #-}
pattern None :: Maybe a
pattern None = Nothing
pattern Some :: a -> Maybe a
pattern Some a = Just a
