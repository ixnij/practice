module Main where

main :: IO ()
vars = [x | x <- [1 .. 20], x `mod` 2 == 0]

-- Attention: x `mod` 2 ==
-- equals to even x
vartwo = [x + y | x <- [1 .. 200], y <- [201 .. 400]]

main = do
  print vars
  print vartwo
