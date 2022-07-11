-- 我自己是觉得 haskell 提供的函数组合是比较自然的，即从从右边到左边的运算顺序。
import Prelude hiding ((.))

(.) :: (d -> b) -> (c -> d) -> (c -> b)
f . g = \x -> f (g x)

infixl 9 >>

(>>) :: (a -> b) -> (b -> c) -> (a -> c)
f >> g = \x -> g (f x)
