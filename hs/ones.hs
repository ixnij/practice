ones :: [Int]
ones = 1 : ones

newer :: [Int]
newer = take 200 ones

nat = 0 : map (+ 1) nat
