{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE ScopedTypeVariables #-}
module DA.Internal.Prelude
    ( Action(..)
    , (>>=)
    , (=<<)
    , Optional(..)
    ) where

import "base" Prelude

type Action = Monad

data Optional a = None | Some a
    deriving (Eq, Ord, Show, Functor)

instance Applicative Optional where
    pure = Some
    None <*> _ = None
    _ <*> None = None
    Some f <*> Some x = Some (f x)

instance Monad Optional where
    None >>= _ = None
    Some x >>= f = f x
