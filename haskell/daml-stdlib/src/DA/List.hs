module DA.List
  ( dedup
  , find
  , findIndex
  , groupBy
  , groupOn
  , length
  , sortOn
  ) where

import "base" Prelude

import Data.List
import Data.List.Extra

import DA.Internal.Prelude

dedup :: Ord a => [a] -> [a]
dedup = nubOrd
