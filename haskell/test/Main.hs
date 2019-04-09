-- Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
-- SPDX-License-Identifier: Apache-2.0

module Main where

import Test.Hspec

import qualified Test.Main

main :: IO ()
main = hspec Test.Main.main
