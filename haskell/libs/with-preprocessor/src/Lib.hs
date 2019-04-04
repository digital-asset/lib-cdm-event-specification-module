-- Copyright (c) 2019, Digital Asset (Switzerland) GmbH and/or its affiliates. All rights reserved.
-- SPDX-License-Identifier: Apache-2.0

{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
module Lib where

import Data.Char
import Data.Text (Text)
import qualified Data.Text as Text
import Data.Void
import Text.Megaparsec
import Text.Megaparsec.Char

type Parser = Parsec Void Text

data DataDecl = DataDecl
  { headerInfix :: !Text
  -- ^ The part between "data" and "with"
  , dataDeclLines :: ![DataDeclLine]
  , derivingDecl :: !DerivingDecl
  } deriving Show

data DerivingDecl = DerivingDecl
  { derivingPrefix :: Text
  , derivingPostfix :: Text
  } deriving Show

data DataDeclLine
    = FieldDecl !Text !Text !Text -- whitespace, field name, postfix after (::)
    | Other !Text
    deriving Show


data Item = Data !DataDecl | Line !Text
    deriving Show

item :: Parser Item
item = choice [Data <$> try dataDecl, Line <$> other]
  where other = takeWhileP Nothing (/= '\n')

file :: Parser [Item]
file = sepEndBy item newline

dataDecl :: Parser DataDecl
dataDecl = do
    _ <- chunk "data"
    infix_ <- manyTill anySingle (chunk "with") <* newline
    declLines <- manyTill (dataDeclLine <* newline) (lookAhead $ try deriving_)
    deriv <- deriving_
    pure $ DataDecl
      { headerInfix = Text.pack infix_
      , dataDeclLines = declLines
      , derivingDecl = deriv
      }

noNewline :: Parser Char
noNewline = satisfy (/= '\n')

deriving_ :: Parser DerivingDecl
deriving_ = do
    prefix <- manyTill noNewline (chunk "deriving")
    rest <- takeWhileP Nothing (/= '\n')
    pure $ DerivingDecl (Text.pack prefix) rest

dataDeclLine :: Parser DataDeclLine
dataDeclLine =
    choice [fieldDecl, other]
    where
        fieldDecl = try $ do
            spacePrefix <- takeWhileP Nothing isSpace
            field <- (:) <$> satisfy (\c -> isLower c || c == '_') <*> manyTill noNewline (chunk "::")
            postfix <- takeWhileP Nothing (/= '\n')
            pure $ FieldDecl spacePrefix (Text.pack field) postfix
        other = Other <$> takeWhileP Nothing (/= '\n')

toHaskellRecord :: DataDecl -> Text
toHaskellRecord DataDecl{..} =
    Text.unlines ("data" <> headerInfix : printDeclLines True dataDeclLines) <>
    derivingPrefix derivingDecl <> (if isRecord then "} " else "") <> "deriving" <> derivingPostfix derivingDecl
    where
        isFieldDecl :: DataDeclLine -> Bool
        isFieldDecl FieldDecl{} = True
        isFieldDecl _ = False
        isRecord = any isFieldDecl dataDeclLines
        printDeclLines :: Bool -> [DataDeclLine] -> [Text]
        printDeclLines _ [] = []
        printDeclLines isFirstField (l : ls) =
            case l of
                Other t -> t : printDeclLines isFirstField ls
                FieldDecl whitespace name postfix ->
                    (whitespace <> (if isFirstField then "{ " else ", ") <> name <> "::" <> postfix) :
                    printDeclLines False ls

printItem :: Item -> Text
printItem (Data decl) = toHaskellRecord decl
printItem (Line t) = t

printFile :: [Item] -> Text
printFile = Text.unlines . map printItem
