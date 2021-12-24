main :: IO ()
main = do
  putStrLn "Hello, This is Haskell!"
  putStrLn p
  where p = show $ [1 .. 2]
