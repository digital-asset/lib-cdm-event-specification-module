module Prelude
    ( module Base.Prelude

    , Optional(..)

    , Text

    , Decimal
    , intToDecimal

    , Time
    , Date

    , Action(..)
    , (>>)
    , (=<<)
    , return

    , error
    , show

    , optional
    , ifThenElse
    , fromString
    , mapA
    ) where

import "base" Prelude as Base.Prelude
  hiding
  ( Maybe
  , Monad
  , (=<<)
  , (>>=)
  , (>>)
  , error
  , id
  , length
  , return
  , show
  , subtract
  )
import qualified "base" Prelude as Base.Prelude

import Data.String
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

show :: Show a => a -> Text
show = Text.pack . Base.Prelude.show

optional :: b -> (a -> b) -> Optional a -> b
optional n _ None  = n
optional _ f (Some x) = f x

ifThenElse :: Bool -> a -> a -> a
ifThenElse b ifT ifF = if b then ifT else ifF

return :: Applicative f => a -> f a
return = pure

(>>) :: Applicative m => m a -> m b -> m b
(>>) = (*>)

mapA :: (Applicative f, Traversable t) => (a -> f b) -> t a -> f (t b)
mapA = traverse
