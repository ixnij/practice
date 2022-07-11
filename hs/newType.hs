{-# LANGUAGE GeneralisedNewtypeDeriving #-}

newtype MySimpleType =
  ST Integer
  deriving (Num, Eq, Ord)

instance Show MySimpleType where
  show (ST n) = "This is " ++ show n ++ "."

type Stype = Integer
