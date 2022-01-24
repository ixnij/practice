import Data.List

{-

I think [2..(x-1)] is too ugly.

-}

isPrime :: Integer -> Bool
isPrime x
    | x < 2     = False
    | x == 2    = True
    | otherwise = foldl' (\a b -> a && (x `mod` b /= 0)) True [2..(x-1)]

-- pr :: IO Bool
-- pr x y = do
--   putStrLn x
--   return y

isPrime' :: Integer -> IO Bool
isPrime' x
    | x < 2     = return False
    | x == 2    = return True
    | otherwise = foldl' m (return True) [2..(x-1)]
    where m a b =
            if x `mod` b == 0 then (do
              putStrLn $ show b
              return False)
            else (do
                a' <- a
                return $ a' && True)

-- There is another solution.
isPrime'' :: Integer -> (Maybe Integer, Bool)
isPrime'' x
    | x < 2     = (Nothing, False)
    | x == 2    = (Just 1, True)
    | otherwise = foldl' m (Nothing, True) [2..(x-1)]
    where m a b =
            if x `mod` b == 0 then
              (Just b, False)
            else
              case a of (_, True) -> (Nothing, True)
                        (something, False) -> (something, False)

wrapped :: Integer -> IO ()
wrapped x =
  case isPrime'' x of (_, True) -> putStrLn $ show x ++ "is a prime."
                      (Just n, False) ->
                        let explainString = show x ++
                              " can't be a prime, " ++
                              "because it can be divided by " ++
                              show n ++ "."
                        in   putStrLn explainString

primes = filterPrime [2..]
filterPrime :: [Integer] -> [Integer]
filterPrime (p:xs) =
    p : filterPrime [x | x <- xs, x `mod` p /= 0]
    -- modified from haskell.org :P

main = do
  nu <- getLine
  let num = read nu
  if isPrime num then
    putStrLn $ nu ++ " is a prime."
    else
    putStrLn $ nu ++ " isn't a prime."