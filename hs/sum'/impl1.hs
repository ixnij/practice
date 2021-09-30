sum' :: (Num a) => [a] -> a
sum' xs = foldl (\a b -> a + b) 0 xs
