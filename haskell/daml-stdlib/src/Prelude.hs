{-# LANGUAGE ScopedTypeVariables #-}
module Prelude
    ( module Base.Prelude

    , Optional(..)

    , Text

    , Decimal
    , intToDecimal

    , Time
    , Date

    , Action(..)

    , error
    ) where

import "base" Prelude as Base.Prelude hiding (Maybe, Monad, (>>=), error)
import qualified "base" Prelude as Base.Prelude

import Data.Text
import qualified Data.Text as Text

import DA.Date
import DA.Optional

type Decimal = Double

intToDecimal :: Int -> Decimal
intToDecimal = fromIntegral

infixl 1 >>=
class Applicative m => Action m where
    -- | Sequentially compose two actions, passing any value produced
    -- by the first as an argument to the second.
    (>>=)       :: forall a b. m a -> (a -> m b) -> m b

error :: Text -> a
error = Base.Prelude.error . Text.unpack
