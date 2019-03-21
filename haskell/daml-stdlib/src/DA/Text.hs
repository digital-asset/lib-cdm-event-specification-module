module DA.Text where

import Data.Maybe
import Data.Text (Text, stripPrefix)

dropPrefix :: Text -> Text -> Text
dropPrefix prefix t = fromMaybe t (stripPrefix prefix t)
