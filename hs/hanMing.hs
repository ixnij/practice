import MergeSort

-- The merge' function is wrong

ham = 1 : merge' (map (*2) ham)
                 (merge' (map (*3) ham)
                         (map (*5) ham))

merge :: (Ord a) => [a] -> [a] -> [a]
merge xs [] = xs
merge [] xs = xs
merge (x:xs) (y:ys)
 | x < y = x : merge xs (y:ys)
 | x > y = y : merge (x:xs) ys
 | otherwise = x : merge xs ys

ham' = 1 : merge (map (*2) ham')
                 (merge (map (*3) ham')
                        (map (*5) ham'))

-- 总结：我发现，其实我之所以一直得不出正确的 hamming 函数
-- 不是由于我递归定义的 hamming 函数，而是由于不正确的 merge 函数。
