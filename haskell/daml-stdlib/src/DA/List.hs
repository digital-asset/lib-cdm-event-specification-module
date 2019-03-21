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

import Data.List hiding (find, findIndex)
import qualified Data.List
import Data.List.Extra hiding (find, findIndex)

import DA.Internal.Prelude

dedup :: Ord a => [a] -> [a]
dedup = nubOrd

find :: (a -> Bool) -> [a] -> Optional a
find p xs = maybeToOptional $ Data.List.find p xs

findIndex :: (a -> Bool) -> [a] -> Optional Int
findIndex p xs = maybeToOptional $ Data.List.findIndex p xs

maybeToOptional :: Maybe a -> Optional a
maybeToOptional Nothing = None
maybeToOptional (Just x) = Some x
