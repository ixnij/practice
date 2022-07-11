insert :: a -> [a] -> [[a]]
insert n [] = [[n]]
insert n (x:xs) = (n : x : xs) : [x : xs' | xs' <- insert n xs]

permutation :: [a] -> [[a]]
permutation [] = [[]]
permutation (x:xs) = concat [insert x per | per <- permutation xs]
