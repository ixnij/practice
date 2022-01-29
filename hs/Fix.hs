module Fix where

fix :: (a -> a) -> a
fix f = f (fix f)

fix' :: (Eq a) => (a -> a) -> a -> a
fix' f x
  | f x == x  = x
  | otherwise = f (fix' f x)
