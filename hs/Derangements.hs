import Data.List (delete, genericLength)

derangements [] = [[]]
derangements l =
  [x : xs | x <- l, x /= genericLength l, xs <- derangements (delete x l)]

derangements' x = map reverse $ derangements [1 .. x]
-- 为了把每一个数字依次地放置于 n, n - 1 .. 1 , 所以才倒过来处理。
-- 假设，有集合 {1, 2, 3, 4}, 那么要把 1 放在第四位， 以此类推。
-- 关系如下：
-- num index
--   1     -     3
--   2     -     2 此时，不符合要求
--   3     -     1
--   4     -     0
