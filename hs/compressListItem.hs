skip :: (Eq a) => a -> [a] -> [a]
skip x [] = [x]
skip x (y:ys)
  | x == y = (y : ys)
  | otherwise = x : y : ys

implOne :: (Eq a) => [a] -> [a]
implOne [] = []
implOne (x:xs) = skip x $ implOne xs

implTwo :: (Eq a) => [a] -> [a]
implTwo = foldr skip []
