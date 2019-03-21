module DA.Optional where

import "base" Prelude

fromOptional :: a -> Optional a -> a
fromOptional d x = case x of None -> d; Some v  -> v

data Optional a = None | Some a
    deriving (Eq, Ord, Show)

catOptionals :: [Optional a] -> [a]
catOptionals = concatMap optionalToList

optionalToList :: Optional a -> [a]
optionalToList None = []
optionalToList (Some x)  = [x]
