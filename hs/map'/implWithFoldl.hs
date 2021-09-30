map' :: (a -> b) -> [a] -> [b]  
map' f xs = foldl (\a b -> a ++ [f b]) [] xs 
