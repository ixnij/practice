delete :: (Ord a) => a -> [a] -> [a]
delete _ [] = []
delete x1 (x:xs)
  | x1 == x   = xs
  | otherwise = x : delete x1 xs

selectionSort :: (Ord a) => [a] -> [a]
selectionSort [] = []
selectionSort x = min : selectionSort rest
 where min  = minimum x
       rest = delete min x
