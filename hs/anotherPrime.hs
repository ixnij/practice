import Distribution.Simple.Utils (fromUTF8LBS)

factors :: Integral a => a -> [a]
factors x = [n | n <- [1 .. x], x `mod` n == 0]
  -- 所以，素数就是这个函数所产生的集合的 ..

soPrimep :: Integral x => x -> Bool
soPrimep x = factors x == [1, x]

isPrime 2 = True
isPrime x =
  odd x && (all (\n -> n `mod` x /= 0) (takeWhile (\n -> n ^ 2 <= x) [3,5 ..]))

nextPrime :: Integer -> Integer
nextPrime x
  | odd x =
    if isPrime x
      then x
      else nextPrime (x + 2)
  | otherwise = nextPrime $ x + 1

sieve (x:xs) = x : sieve [y | y <- xs, y `mod` x /= 0]

-- 这个函数必须从 2 开始
primes = sieve [2 ..]
