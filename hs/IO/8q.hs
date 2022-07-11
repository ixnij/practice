module Main where

main :: IO ()
main = mapM_ m (queens 8)
  where
    m a = do
      mapM_ mm a
      putStr "\n"
    mm b = do
      print b
      putStr " "
        --- Impl queens
    insert x [] = [[]]
    insert x (n:ns) = (x : n : ns) : [n : z | z <- insert x ns]
    pmt :: [Int] -> [[Int]]
    pmt [] = [[]]
    pmt (x:xs) = concat [insert x n | n <- pmt xs]
    diag :: [Int] -> Bool
    diag [] = True
    diag all@(_:xs) =
      and [abs (p1 - p) /= abs (l1 - l) | (p, l) <- n] && diag xs
      where
        (p1, l1):n = zip [1 ..] all
    queens n = [x | x <- pmt [1 .. n], diag x]
