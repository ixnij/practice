import Prelude hiding (map)

map :: (a -> b) -> [a] -> [b]
map f = foldr (\a b -> f a : b) []
