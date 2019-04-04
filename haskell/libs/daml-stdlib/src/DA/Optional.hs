-- Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
-- SPDX-License-Identifier: Apache-2.0

module DA.Optional where

import "base" Prelude

import DA.Internal.Prelude

fromOptional :: a -> Optional a -> a
fromOptional d x = case x of None -> d; Some v  -> v

catOptionals :: [Optional a] -> [a]
catOptionals = concatMap optionalToList

optionalToList :: Optional a -> [a]
optionalToList None = []
optionalToList (Some x)  = [x]

mapOptional :: (a -> Optional b) -> [a] -> [b]
mapOptional f = catOptionals . map f

isSome :: Optional a -> Bool
isSome None = False
isSome (Some _) = True

isNone :: Optional a -> Bool
isNone None = True
isNone (Some _) = False
