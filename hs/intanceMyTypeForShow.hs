newtype MyType = TypeOne String

instance Show MyType where
  show (TypeOne a) = "This is " ++ a
