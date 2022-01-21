import Data.List

isPrime :: Integer -> Bool
isPrime x
    | x < 2     = False
    | x == 2    = True
    | otherwise = foldl' (\a b -> a && (x `mod` b /= 0)) True [2..(x-1)]

primes = filterPrime [2..]
filterPrime :: [Integer] -> [Integer]
filterPrime (p:xs) =
    p : filterPrime [x | x <- xs, x `mod` p /= 0]