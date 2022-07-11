max' :: (Ord x) => x -> x -> x
max' a b
  | a > b = a
  | otherwise = b
