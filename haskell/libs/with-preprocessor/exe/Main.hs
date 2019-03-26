module Main where

import Lib

import qualified Data.Text.IO as Text
import System.Environment
import System.Exit
import System.IO
import Text.Megaparsec

main :: IO ()
main = do
    (inFile : outFile : _) <- getArgs
    content <- Text.readFile inFile
    case parse (file <* eof) "" content of
        Left err -> do
            hPutStrLn stderr $ errorBundlePretty err
            exitFailure
        Right r -> do
            Text.writeFile outFile $ printFile r
