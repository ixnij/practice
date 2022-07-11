list :: [Float]
list = [0.5,1 .. 20]

listTwo :: [Float]
listTwo = [x | x <- list, x > 2.3]
