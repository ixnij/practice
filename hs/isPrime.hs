module IsPrime (isPrime, wrapped) where

import qualified Data.List as L


{- I think [2..(x-1)] is too ugly.
And, otherwise = True -}

isPrime :: Integer -> Bool
isPrime x
  |     x < 2 = False
  |     x == 2 = True
  |     otherwise = L.foldl' (\a b -> a && (x `mod` b /= 0)) True [2 .. (x -1)]

-- pr :: IO Bool
-- pr x y = do
--   putStrLn x
--   return y

isPrime' :: Integer -> IO Bool
isPrime' x
  | x < 2 = return False
  | x == 2 = return True
  | otherwise = L.foldl' m (return True) [2 .. (x -1)]
  where
    m a b =
      if x `mod` b == 0
        then
          ( do
              print b
              return False
          )
        else
          ( do
              a' <- a
              return $ a' && True
          )

-- There is another solution.
isPrime'' :: Integer -> (Maybe Integer, Bool)
isPrime'' x
  | x < 2 = (Nothing, False)
  | x == 2 = (Just 1, True)
  | otherwise = L.foldl' m (Nothing, True) [2 .. (x -1)]
  where
    m a b =
      if x `mod` b == 0
        then (Just b, False)
        else case a of
          (_, True) -> (Nothing, True)
          (something, False) -> (something, False)

wrapped :: Integer -> IO ()
wrapped x =
  case isPrime'' x of
    (_, True) -> putStrLn $ show x ++ "is a prime."
    (Just n, False) ->
      let explainString =
            show x
              ++ " can't be a prime, "
              ++ "because it can be divided by "
              ++ show n
              ++ "."
       in putStrLn explainString
    (Nothing, False) -> putStrLn "The num < 2, not fit the defination of prime."

primes :: [Integer]
primes = filterPrime [2 ..]

filterPrime :: [Integer] -> [Integer]
filterPrime [] = []
filterPrime (p : xs) =
  p : filterPrime [x | x <- xs, x `mod` p /= 0]

-- modified from haskell.org :P

main :: IO ()
main = do
  nu <- getLine
  let num = read nu
  if isPrime num
    then putStrLn $ nu ++ " is a prime."
    else putStrLn $ nu ++ " isn't a prime."
