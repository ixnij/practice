mc :: Integer -> Integer
mc n
  | n > 100 = n - 10
  | otherwise = mc $ mc $ n + 11
