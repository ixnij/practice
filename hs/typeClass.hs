data LongTypeClassName = LongTypeClassName String deriving (Show, Eq, Ord)
data Z = Z String Int deriving (Show, Eq, Ord)

data Re = Re { name:: String
             , hook :: String -- The name of "::" is "Paamayim Nekudotayim".
             , isPerson :: Bool
             } deriving (Show)

type P = Z

data Ya a = Ya a deriving (Show)

type F = Ya Int
