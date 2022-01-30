positions 0 _ = [[]]
positions k n = [x : xs | x <- [1 .. n], xs <- positions (k - 1) n]

noSameRow [] = True
noSameRow (x : xs) = not (elem x xs) && noSameRow xs

noSameRow' [] = True
noSameRow' (x : xs) = x `notElem` xs && noSameRow' xs

noSameDiag [] = True
noSameDiag xx@(x : xs) = and [abs (p1 - p) /= abs (l1 - l) | (p, l) <- xs'] && noSameDiag xs
  where
    (p1, l1) : xs' = zip [1 ..] xx