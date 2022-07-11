quickSort :: (Ord a) => [a] -> [a]
quickSort [] = []
quickSort [x] = [x]
quickSort (x:xs) = quickSort p1 ++ [x] ++ quickSort p2
  where
    p1 = filter (<= x) xs
    p2 = filter (> x) xs

filterSpilt :: (a -> Bool) -> [a] -> ([a], [a])
filterSpilt _ [] = ([], [])
filterSpilt f (x:xs)
  | f x = (x : l, r)
  | otherwise = (l, x : r)
  where
    (l, r) = filterSpilt f xs

quickSort' :: (Ord a) => [a] -> [a]
quickSort' [] = []
quickSort' [x] = [x]
quickSort' (x:xs) = quickSort p1 ++ [x] ++ quickSort p2
  where
    (p1, p2) = filterSpilt (<= x) xs
