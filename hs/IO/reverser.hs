import Data.Char

main = do
  f <- getContents
  let res = map toUpper f
  putStr res
