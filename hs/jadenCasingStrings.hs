import Data.Char

toJadenCase :: String -> String
toJadenCase = unwords . map m . words
  where
    m (x:xs) = toUpper x : xs
