module Main where
import qualified IsPrimeLib as I

main :: IO ()
main = do
  nu <- getLine
  let num = read nu
  if I.isPrime num
    then putStrLn $ nu ++ " is a prime."
    else putStrLn $ nu ++ " isn't a prime."
