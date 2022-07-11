import Data.List (transpose)

infixl 5 |*|

a |*| b = [[sum $ zipWith (*) ar br | br <- transpose b] | ar <- a]
