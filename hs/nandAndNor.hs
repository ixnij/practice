module Impl where
import Prelude hiding (not, and)

nand, nor, and, and' :: Bool -> Bool -> Bool
nand True True = False
nand _ _ = True

nor False False = True
nor _ _ = False

not, not' :: Bool -> Bool 
not a = nor a a
not' a = nand a a

and a b = not $ nand a b
and' a b = let a' = not a
               b' = not b
           in  nor a' b'
