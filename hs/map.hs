import qualified Data.Map as Map

type StrMap = Map.Map String

myMapLookup :: String -> StrMap a -> Maybe a
myMapLookup = Map.lookup
