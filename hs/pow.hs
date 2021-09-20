pow :: (Eq p, Num p) => p -> p
pow 0 = 1
pow 1 = 1
pow x = x * pow (x - 1)
