module DA.List
  ( groupBy
  , groupOn
  , length
  , mapA
  , sortOn
  ) where

import "base" Prelude

import Data.List
import Data.List.Extra

mapA :: (Applicative f, Traversable t) => (a -> f b) -> t a -> f (t b)
mapA = traverse
