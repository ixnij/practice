-- Merge 函数的前提是，排序的两个列表必须是有序的才行。
-- 所以，没有必要认为 Merge 的行为是错误的。

merge :: (Ord a) => [a] -> [a] -> [a]
merge x [] = x
merge [] y = y
merge xx@(x : xs) yy@(y : ys)
  | x > y     = y : merge xx ys
  | otherwise = x : merge xs yy

mergeSort :: (Ord a) => [a] -> [a]
mergeSort []  = []
mergeSort [x] = [x] -- remember, (x:[]) equals to [x]
mergeSort xs  = merge (mergeSort m1) (mergeSort m2)
  where (m1, m2) = xx xs
        xx xxx   = splitAt l xxx
        l        = length xs `div` 2
