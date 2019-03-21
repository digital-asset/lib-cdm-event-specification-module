{-# LANGUAGE ScopedTypeVariables #-}
{-# LANGUAGE NoImplicitPrelude #-}
module Prelude
    ( module Base.Prelude

    , Optional(..)

    , Text

    , Decimal
    , intToDecimal

    , Time
    , Date

    , Action(..)
    ) where

import "base" Prelude as Base.Prelude hiding (Maybe, Monad, (>>=))

import Data.Text

import DA.Date

data Optional a = None | Some a
    deriving (Eq, Ord, Show)

type Decimal = Double

intToDecimal :: Int -> Decimal
intToDecimal = fromIntegral

infixl 1 >>=
class Applicative m => Action m where
    -- | Sequentially compose two actions, passing any value produced
    -- by the first as an argument to the second.
    (>>=)       :: forall a b. m a -> (a -> m b) -> m b
