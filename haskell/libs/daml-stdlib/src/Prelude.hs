module Prelude
    ( module Base.Prelude
    , module DA.Internal.Prelude

    , Text

    , Decimal
    , intToDecimal

    , Time
    , Date

    , return

    , error
    , show

    , optional
    , fromSome
    , ifThenElse
    , fromString
    , mapA
    , find

    , Scenario
    , scenario
    , describe
    ) where

import "base" Prelude as Base.Prelude
  hiding
  ( Maybe
  , error
  , id
  , length
  , return
  , show
  , subtract
  )
import qualified "base" Prelude as Base.Prelude

import Data.Maybe
import Data.String
import Data.Text (Text)
import qualified Data.Text as Text
import Data.Word

import DA.Assert
import DA.Date
import DA.Internal.Prelude
import DA.List hiding (length)

import qualified Data.Decimal

decimalScale :: Word8
decimalScale = 10

-- Eventually we should use this to check for overflows.
_decimalPrecision :: Int
_decimalPrecision = 38

roundTo :: Data.Decimal.Decimal -> Decimal
roundTo = Decimal . Data.Decimal.roundTo decimalScale

newtype Decimal = Decimal Data.Decimal.Decimal
  deriving (Eq, Ord, Show)

instance Num Decimal where
    Decimal x + Decimal y = roundTo (x + y)
    Decimal x * Decimal y = roundTo (x * y)
    fromInteger = Decimal . fromInteger
    abs (Decimal x) = Decimal (abs x)
    signum (Decimal x) = roundTo (signum x)
    Decimal x - Decimal y = roundTo (x - y)

instance Fractional Decimal where
    Decimal x / Decimal y = roundTo (x / y)
    fromRational = roundTo . fromRational

instance Real Decimal where
    toRational (Decimal d) = toRational d

instance RealFrac Decimal where
    floor (Decimal d) = floor d
    properFraction (Decimal d) =
        case properFraction d of
            (n, f) -> (n, roundTo f)

intToDecimal :: Int -> Decimal
intToDecimal = fromIntegral

error :: Text -> a
error = Base.Prelude.error . Text.unpack

show :: Show a => a -> Text
show = Text.pack . Base.Prelude.show

optional :: b -> (a -> b) -> Optional a -> b
optional = maybe

fromSome :: Optional a -> a
fromSome = fromJust

ifThenElse :: Bool -> a -> a -> a
ifThenElse b ifT ifF = if b then ifT else ifF

return :: Applicative f => a -> f a
return = pure

mapA :: (Applicative f, Traversable t) => (a -> f b) -> t a -> f (t b)
mapA = traverse

type Scenario = IO
