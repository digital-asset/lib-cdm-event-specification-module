-- Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
-- SPDX-License-Identifier: Apache-2.0

module DA.Assert
  ( script
  , (===)
  , describe
  ) where

import "base" Prelude
import "base" Control.Exception

import Data.Text (Text)
import Test.Hspec

script :: String -> Expectation -> SpecWith ()
script = it

(===) :: (HasCallStack, Eq a, Show a) => a -> a -> Expectation
(===) = shouldBe
