module Main where

fac :: Integer -> Integer
fac 0 = 1
fac x = x * fac (x - 1)

main :: IO ()
main = do
  putStrLn "Please type a number: "
  someNumber <- readLn
  let prompt = "This is the result: "
  print $ fac someNumber
