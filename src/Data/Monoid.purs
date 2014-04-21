module Data.Monoid where

class (Semigroup m) <= Monoid m where
  mempty :: m

instance monoidString :: Monoid String where
  mempty = ""
