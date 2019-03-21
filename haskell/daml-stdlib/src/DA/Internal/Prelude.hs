{-# LANGUAGE ScopedTypeVariables #-}
module DA.Internal.Prelude
    ( Action(..)
    ) where

import "base" Prelude

infixl 1 >>=
class Applicative m => Action m where
    -- | Sequentially compose two actions, passing any value produced
    -- by the first as an argument to the second.
    (>>=)       :: forall a b. m a -> (a -> m b) -> m b
