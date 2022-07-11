data Tree
  = Leaf
  | Node Tree Tree
  deriving (Show)

trees :: Int -> [Tree]
trees 0 = [Leaf]
trees n =
  [ Node leftTrees rightTrees
  | m <- [0 .. (n - 1)]
  , leftTrees <- trees m
  , rightTrees <- trees (n - 1 - m)
  ]
