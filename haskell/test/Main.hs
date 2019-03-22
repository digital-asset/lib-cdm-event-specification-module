module Main where

import Test.Tasty
import Test.Tasty.HUnit

import qualified Test.Main

main :: IO ()
main = defaultMain $ testCase "CDM" Test.Main.main
