module DA.Assert
  ( scenario
  , (===)
  , getParty
  , submitMustFail
  ) where

import "base" Prelude

import Data.Text (Text)
import Test.Tasty
import Test.Tasty.HUnit

scenario :: Assertion -> Assertion
scenario = id

(===) :: (HasCallStack, Eq a, Show a) => a -> a -> Assertion
(===) = (@?=)

data Party = Party

getParty :: Text -> IO Party
getParty _ = pure Party

-- TODO This looks weird, do we need this?
submitMustFail :: Party -> IO a -> Assertion
submitMustFail _ _ = pure ()
