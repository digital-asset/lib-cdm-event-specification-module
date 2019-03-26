module DA.Assert
  ( scenario
  , (===)
  , describe
  ) where

import "base" Prelude
import "base" Control.Exception

import Data.Text (Text)
import Test.Hspec

scenario :: String -> Expectation -> SpecWith ()
scenario = it

(===) :: (HasCallStack, Eq a, Show a) => a -> a -> Expectation
(===) = shouldBe
