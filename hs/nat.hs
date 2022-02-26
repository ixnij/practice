data Nat = Zero | Succ Nat deriving (Show, Eq, Ord)

natToInt :: Nat -> Integer
natToInt Zero = 0
natToInt (Succ n) = 1 + natToInt n

intToNat :: Integer -> Nat
intToNat 0 = Zero
intToNat n = Succ (intToNat (n-1))
