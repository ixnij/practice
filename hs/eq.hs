eq :: (Eq x) => x -> x -> Bool
eq a b
  | a == b = True
  | otherwise = False
