import Data.Bits

isEven :: Integer -> Bool
isEven x = x .&. 1 == 0

isOdd :: Integer -> Bool
isOdd x = not $ isEven x

divByTwo, divByTwo' :: Integer -> Integer
divByTwo x = x `shiftR` 1
-- 这是一个位移操作，相当于 >> 1
--
-- 对于 shift 函数的粗浅理解：
-- 对于 shift 函数来说，其参数 >0 左移，等价于 shiftL ，反之亦然。
--
-- 所以，可以把 divByTwo 的实现改一下。

divByTwo' x = x `shift` (-1) 
