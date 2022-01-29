fib :: (Num a, Eq a) => a -> a
fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fib' :: (Num a, Eq a) => a -> a -> a -> a
fib' 0 f1 f2 = f2
fib' n f1 f2 = fib' (n-1) f2 (f1+f2)

realfib' :: (Num a, Eq a) => a -> a
realfib' n = fib' n 1 1

fibList :: [Int]
fibList = map fib [1 .. 20]

fibStep :: (Num a) => (a, a) -> (a, a)
fibStep (a, b) = (b, a + b)

fibPair :: (Num a, Eq a) => a -> (a, a)
fibPair 0 = (0, 1)
fibPair n = fibStep $ fibPair $ n - 1

fib'' :: (Num a, Eq a) => a -> a
fib'' = fst . fibPair

golden :: (Num a, Eq a, Enum a) => a -> [a]
golden n = undefined

fix f = f (fix f)
fixFib = fix (\f n -> if n == 0 || n == 1  then 1 else f (n - 1) + f (n - 2))
