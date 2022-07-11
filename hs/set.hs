powerset [] = [[]]
powerset (x:xs) = [x : xx | xx <- powerset xs] ++ powerset xs
