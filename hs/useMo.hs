import IsPrime
import Prelude hiding (head, tail, fst, snd)
-- import qualified IsPrime as I

-- import IsPrime (wrapped)

head :: [a] -> a
head [] = undefined
head (x:_) = x

tail :: [a] -> [a]
tail [] = [] 
tail (_:xs) = xs

fst :: (a, b) -> a
fst = \(a, b) -> a

snd :: (a, b) -> b
snd = \(a, b) -> b

main :: IO ()
main = do
  x <- readLn
  wrapped x
