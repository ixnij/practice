module EightQueens
  ( myq
  ) where

positions 0 _ = [[]]
positions k n = [x : xs | x <- [1 .. n], xs <- positions (k - 1) n]

noSameRow [] = True
noSameRow (x:xs) = not (elem x xs) && noSameRow xs

noSameRow' [] = True
noSameRow' (x:xs) = x `notElem` xs && noSameRow' xs

noSameDiag [] = True
noSameDiag all@(_:xs) =
  and [abs (p1 - p) /= abs (l1 - l) | (p, l) <- xs'] && noSameDiag xs
  where
    (p1, l1):xs' = zip [1 ..] all

queen1 n = [x | x <- positions n n, noSameRow x, noSameDiag x]

-- 为啥是 queen1 ？这是由于这个算法过于不健壮。还需要进一步优化。
positions' 0 n = [[]]
positions' k n =
  [p : ps | ps <- positions' (k - 1) n, p <- [1 .. n], isSafe p ps]

isSafe p ps = not ((elem p ps) || (sameDiag p ps))
  where
    sameDiag p ps = any (\(dist, q) -> abs (p - q) == dist) $ zip [1 ..] ps
 -- 这个新的生成器能做到遇到从右边到左边的生成出现 [1.....1,1] or [1.....2,1] 的情况，*立刻*
 -- 终止生成。

queen n = [x | x <- positions' n n, noSameRow x, noSameDiag x]

insert n [] = [[n]]
insert n (n':ns) = (n : n' : ns) : [n' : ns' | ns' <- insert n ns]

permutation [] = [[]]
permutation (x:xs) = concat [insert x n | n <- permutation xs]

myq :: Int -> [[Int]] -- myq is my queen
myq x = [nn | nn <- permutation [1 .. x], noSameDiag nn]
