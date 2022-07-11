-- Zypper is openSUSE's package manager, it's SIMPLE ZIPPER exactly
data Zypper a =
  Zypper [a] a [a]
  deriving (Show)

fromList :: [a] -> Zypper a
fromList (x:xs) = Zypper [] x xs
fromList _ = error "Too few fields in the List"

next :: Zypper n -> Zypper n
next (Zypper a b (c:cs)) = Zypper (b : a) c cs
next single = single

prev :: Zypper n -> Zypper n
prev (Zypper (a:as) b c) = Zypper as a (b : c)
prev single = single

data Tree a
  = Leaf
  | Node a (Tree a) (Tree a)

data Accl a
  = Empty
  | L (Accl a) a (Accl a)
  | R (Accl a) a (Accl a)
