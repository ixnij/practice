data A = One | Two | Three deriving (Show, Enum, Eq, Ord)
data B = Four | Five | Six deriving (Show, Enum, Eq, Ord)

make :: A -> B
make One = Four
make Two = Five
make Three = Six

data Fun = Fun (A -> B)
s :: Fun
s = Fun make
