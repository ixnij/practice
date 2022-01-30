import Data.Char (chr, isLower, ord)

char2int x = ord x - ord 'a'

int2char x = chr $ ord 'a' + x 

shift x c
  | isLower x = int2char $ (char2int x + c ) `mod` 26
  | otherwise = x

-- rshift x c
--   | isLower x = int2char $ 

encode :: String -> Int -> String
encode x c = map (`shift` c) x

-- decode :: String -> Int -> String
-- decode x c = map (`rshift` c) x
-- 
--
-- TODO
