data Nat
  = Zero
  | Succ Nat
  deriving (Ord)

instance Eq Nat where
  (==) Zero Zero = True
  (==) (Succ a) (Succ b) = a == b
  (==) _ _ = False

instance Show Nat where
  show Zero = "It's Zero."
  show a = "It's " ++ (show $ natToInt a)

natToInt :: Nat -> Integer
natToInt Zero = 0
natToInt (Succ n) = 1 + natToInt n

intToNat :: Integer -> Nat
intToNat 0 = Zero
intToNat n = Succ (intToNat (n - 1))
