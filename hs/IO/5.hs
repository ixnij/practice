import Data.Char
import System.IO

main = do
  withFile
    "1.hs"
    ReadMode
    (\handle -> do
       file <- hGetContents handle
       putStr $ map toUpper file)
