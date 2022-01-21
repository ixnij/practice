import Data.List

isPrime :: Integer -> Bool
isPrime x
    | x < 2     = False
    | x == 2    = True
    | otherwise = foldl' (\a b -> a && (x `mod` b /= 0)) True [2..(x-1)]

pr :: IO Bool
pr x y = do
  putStrLn x
  return y

{- This function is not complete yet. TODO -}
isPrime' x
    | x < 2     = False
    | x == 2    = True
    | otherwise = foldl' m True [2..(x-1)]
    where m a b = do
            if x `mod` b == 0 then
              pr (show x ++ " : " ++ show b) -- I can not go on..

primes = filterPrime [2..]
filterPrime :: [Integer] -> [Integer]
filterPrime (p:xs) =
    p : filterPrime [x | x <- xs, x `mod` p /= 0]

main = do
  nu <- getLine
  let num = read nu
  if isPrime num then
    putStrLn $ nu ++ " is a prime."
    else
    putStrLn $ nu ++ " isn't a prime."
