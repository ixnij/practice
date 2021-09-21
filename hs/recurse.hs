repeat' :: (Ord x, Num x) => x -> a -> [a]
repeat' a b
  | a <= 0 = []
  | otherwise = b:repeat' (a - 1) b

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Empty"
maximum' [x] = x
maximum' (a:b) =
  max a (maximum' b)
