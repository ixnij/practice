module Fix where
import Data.List

fix :: (a -> a) -> a
fix f = f (fix f)

fix' :: (Eq a) => (a -> a) -> a -> a
fix' f x
  | f x == x  = x
  | otherwise = fix' f (f x)

fix'' :: (Eq b) => (a -> b -> b) -> a -> b -> b
fix'' f x y
  | f x y == y = y
  | otherwise  = fix'' f x (f x y)

fixp :: (a -> a -> Bool) -> (a -> a) -> a
fixp c f x | c x (f x) = x
           | otherwise = fixp c f (f x)
           -- the arg "C" is a function, or a predicate
