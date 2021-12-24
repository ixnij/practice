data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show, Read, Eq)

singleNode :: a -> Tree a
singleNode x = Node x EmptyTree EmptyTree

treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert a EmptyTree = singleNode a
treeInsert x (Node a left right)
  | x == a = Node x left right
  | x > a = Node x left (treeInsert x right)
  | x < a = Node x (treeInsert x left) right

myTree = foldr treeInsert EmptyTree [1, 20, 3]
