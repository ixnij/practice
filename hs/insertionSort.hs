module InsertionSort
  ( p
  , pp
  ) where

insert x [] = [x]
insert x yss@(y:ys)
  | x < y = x : yss
  | otherwise = y : insert x ys

sort [] = []
sort (x:xs) = insert x (sort xs) -- 不用foldr

sort' xs [] = xs
sort' xs (y:ys) = sort' (insert y xs) ys -- 不用 foldl

pp, p :: [Integer]
pp = [10, 8, 76, 5, 43, 2, 3, 1, 0]

p =
  [ 1
  , 3
  , 3412341
  , 234
  , 1234
  , 1
  , 234
  , 123
  , 41
  , 234
  , 123
  , 4
  , 1234
  , 12
  , 34
  , 256456
  , 346
  , 57
  , 6745
  , 456745676756
  , 674567
  , 8
  , 98
  , 5634
  , 890980
  ]
