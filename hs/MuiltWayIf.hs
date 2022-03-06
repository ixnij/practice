{-# LANGUAGE MultiWayIf #-}

foo a b = if | a + b > 20 -> if | a + b < 30 -> True
                                | a + b < 40 -> True
                                | otherwise  -> error "Too big"
             | a + b < 10 -> False
             | otherwise -> False
