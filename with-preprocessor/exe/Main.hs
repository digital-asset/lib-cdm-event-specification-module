module Main where

import Lib

import qualified Data.Text.IO as Text
import System.Environment
import System.Exit
import System.IO
import Text.Megaparsec

main :: IO ()
main = do
    content <- Text.getContents
    case parse (file <* eof) "" content of
        Left err -> do
            hPutStrLn stderr $ errorBundlePretty err
            exitFailure
        Right r -> do
            Text.putStr $ printFile r
