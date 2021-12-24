data LongTypeClassName = LongTypeClassName String deriving (Show, Eq, Ord, Read)
data Z = Z String Int deriving (Show, Eq, Ord, Read)

data Re = Re { name:: String
             , hook :: String -- The name of "::" is "Paamayim Nekudotayim".
             , isPerson :: Bool
             } deriving (Show)

type P = Z

data Ya a = Ya a deriving (Show)
type F = Ya Int

data R = R deriving (Show)
type Circle' = R Double

instance Functor (Either a) where
  fmap f (Right x) = Right (f x)
