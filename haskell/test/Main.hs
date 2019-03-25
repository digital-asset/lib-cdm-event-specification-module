module Main where

import Test.Hspec

import qualified Test.Main

main :: IO ()
main = hspec Test.Main.main
