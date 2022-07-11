-- import qualified InsertionSort as Res
-- Res.p can be a data for test
import InsertionSort

swaps :: (Ord a) => [a] -> [a]
swaps [] = []
swaps [x] = [x]
swaps (x:y:ys)
  | x > y = y : swaps (x : ys)
  | otherwise = x : swaps (y : ys)

fix :: (Ord a) => ([a] -> [a]) -> [a] -> [a]
fix f x =
  if x == x'
    then x
    else fix f x'
  where
    x' = f x

bubbleSort, bubbleSort', bubbleSort'' :: (Ord a) => [a] -> [a]
bubbleSort = fix swaps

bubbleSort' x
  | swaps x == x = x
  | otherwise = bubbleSort' $ swaps x

bubbleSort'' x
  | swaps x == x = x
  | otherwise = bubbleSort'' $ swaps x'
  where
    x' = init x
  -- 通过在 ghci 里的测试, :set +s
  -- 得出: bubbleSort'' faster than bubbleSort faster than bubbleSort'
