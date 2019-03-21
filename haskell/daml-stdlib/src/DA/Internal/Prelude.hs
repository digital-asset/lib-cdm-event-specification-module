{-# LANGUAGE DeriveFunctor #-}
{-# LANGUAGE ScopedTypeVariables #-}
module DA.Internal.Prelude
    ( Action(..)
    , (=<<)
    , Optional(..)
    ) where

import "base" Prelude hiding ((=<<), Monad, (>>=))

infixl 1 >>=
class Applicative m => Action m where
    -- | Sequentially compose two actions, passing any value produced
    -- by the first as an argument to the second.
    (>>=)       :: forall a b. m a -> (a -> m b) -> m b

(=<<) :: Action m => (a -> m b) -> m a -> m b
(=<<) = flip (>>=)

data Optional a = None | Some a
    deriving (Eq, Ord, Show, Functor)

instance Applicative Optional where
    pure = Some
    None <*> _ = None
    _ <*> None = None
    Some f <*> Some x = Some (f x)

instance Action Optional where
    None >>= _ = None
    Some x >>= f = f x
