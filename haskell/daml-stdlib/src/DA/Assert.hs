module DA.Assert
  ( scenario
  , (===)
  , getParty
  , submitMustFail
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

data Party = Party

getParty :: Text -> IO Party
getParty _ = pure Party

submitMustFail :: Party -> IO a -> Expectation
submitMustFail _ x = (evaluate =<< x) `shouldThrow` anyErrorCall
