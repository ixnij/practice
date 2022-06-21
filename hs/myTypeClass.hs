class MC a where
  plain :: a -> a -> a
  pass :: a -> a -> a
  plain = pass
  pass = plain
  {-# MINIMAL plain | pass #-}

instance (Num a) => MC (Maybe a) where
  plain (Just x) (Just y) = Just (x+y)
