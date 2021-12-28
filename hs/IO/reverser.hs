import Data.Char

main = do
  f <- getContents
  putStrLn $ map toUpper f
