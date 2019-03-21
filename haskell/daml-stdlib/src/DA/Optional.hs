{-# LANGUAGE DeriveFunctor #-}
module DA.Optional where

import "base" Prelude

import DA.Internal.Prelude

fromOptional :: a -> Optional a -> a
fromOptional d x = case x of None -> d; Some v  -> v

data Optional a = None | Some a
    deriving (Eq, Ord, Show, Functor)

instance Applicative Optional where
    pure = Some
    None <*> _ = None
    _ <*> None = None
    Some f <*> Some x = Some (f x)

instance Action Optional where
    None >>= _ = None
    Some x >>= f = f x

catOptionals :: [Optional a] -> [a]
catOptionals = concatMap optionalToList

optionalToList :: Optional a -> [a]
optionalToList None = []
optionalToList (Some x)  = [x]

mapOptional :: (a -> Optional b) -> [a] -> [b]
mapOptional f = catOptionals . map f

isSome :: Optional a -> Bool
isSome None = False
isSome _ = True
