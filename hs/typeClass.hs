data LongTypeClassName = LongTypeClassName String deriving (Show, Eq, Ord)
data Z = Z String Int deriving (Show, Eq, Ord)

data Re = Re { name:: String
             , hook :: String
             , isPerson :: Bool
             } deriving (Show)
