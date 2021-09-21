max' :: (Ord x) => x -> x -> Ordering
max' a b
  | a > b = a
  | otherwise = b

pr :: [x] -> String
pr = case xs of [] -> "fn"
                (_:y) -> "wow"
