{-# LANGUAGE PatternGuards #-}

foo x
  | Just m <- x
  , m > 2 = True
  | Nothing <- x = False
