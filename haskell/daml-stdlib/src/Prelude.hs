{-# LANGUAGE NoImplicitPrelude #-}
module Prelude
    ( module Base.Prelude
    , Optional(..)
    , Text
    , Decimal
    , intToDecimal
    , Time
    , Date
    ) where

import "base" Prelude as Base.Prelude hiding (Maybe)

import Data.Text

import DA.Date

data Optional a = None | Some a
    deriving (Eq, Ord, Show)

type Decimal = Double

intToDecimal :: Int -> Decimal
intToDecimal = fromIntegral
