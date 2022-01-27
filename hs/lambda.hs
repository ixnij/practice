sum' :: (Num a) => [a] -> a
sum' xs = foldl (\acc x -> acc + x) 0 xs

f, f', f'' :: Int -> Int -> Int
f = \a -> \b -> a `mod` b

f' = \a b -> a `mod` b

f'' = (mod)
