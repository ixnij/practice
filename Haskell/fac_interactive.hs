fac 0 = 1
fac n = n * fac ( n - 1 )

main = do putStrLn "This program will calc the fac number."
          putStrLn "Please type a number: "
          x <- readLn
          if x >= 200
            then putStrLn "This number is too big."
            else print (fac x)
