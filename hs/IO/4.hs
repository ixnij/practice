import System.IO
import Data.Char

main = do
  handle <- openFile "1.hs" ReadMode
  cont <- hGetContents handle
  putStr $ map toUpper cont
  hClose handle
