import Data.Char
import System.IO

main = do
  handle <- openFile "1.hs" ReadMode
  cont <- hGetContents handle
  putStr $ map toUpper cont
  hClose handle
