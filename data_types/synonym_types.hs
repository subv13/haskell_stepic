module SynonymTypes where

newtype Xor = Xor { getXor :: Bool }
  deriving (Eq,Show)

instance Monoid Xor where
    mempty = Xor False
    mappend (Xor a) (Xor b) = Xor $ (a && not b) || (not a && b)
