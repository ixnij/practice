import IsPrime
import Prelude hiding (head, tail, fst, snd)
-- import qualified IsPrime as I

-- import IsPrime (wrapped)

head, last :: [a] -> a
head [] = error "Empty List"
head (x:_) = x

last [] = error "Empty List"
last x = undefined

init, tail :: [a] -> [a]

init [] = []
init x = undefined

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
