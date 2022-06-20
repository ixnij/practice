{-# LANGUAGE GADTs #-}

import Prelude hiding (Maybe, Either)

data Exp a where
  ValueInt :: Int
  ValueBoolean :: Bool
  Add :: Exp Int -> Exp Int -> Exp Int
  Equal :: Exp Int -> Exp Int -> Exp Bool

data Maybe a where
  Nothing :: Maybe a
  Just :: a -> Maybe a

data Either a b where
  Left :: a -> Either a b
  Right :: b -> Either a b
