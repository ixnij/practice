{-# LANGUAGE GADTs #-}

import Prelude hiding (Maybe, Either)

data Exp a where
  ValueInt :: Int -> Exp Int
  ValueBoolean :: Bool -> Exp Bool
  Add :: Exp Int -> Exp Int -> Exp Int
  Equal :: Exp Int -> Exp Int -> Exp Bool

data Maybe a where
  Nothing :: Maybe a
  Just :: a -> Maybe a

data Either a b where
  Left :: a -> Either a b
  Right :: b -> Either a b

-- make a function for Exp

eval :: Exp a -> a
eval (ValueInt a) = a
eval (ValueBoolean a) = a
eval (Add exp1 exp2) = eval exp1 + eval exp2
eval (Equal exp1 exp2) = eval exp1 == eval exp2
