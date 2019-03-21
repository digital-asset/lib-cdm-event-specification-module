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
    , optional
    ) where

import "base" Prelude as Base.Prelude hiding (Maybe, Monad, (>>=), error, length, id)
import qualified "base" Prelude as Base.Prelude

import Data.Text
import qualified Data.Text as Text

import DA.Date
import DA.Internal.Prelude
import DA.Optional

type Decimal = Double

intToDecimal :: Int -> Decimal
intToDecimal = fromIntegral

error :: Text -> a
error = Base.Prelude.error . Text.unpack

optional :: b -> (a -> b) -> Optional a -> b
optional n _ None  = n
optional _ f (Some x) = f x
