module Data.Monoid where

infixr 6 <>

class Monoid m where
  mempty :: m
  (<>) :: m -> m -> m

instance monoidString :: Monoid String where
  mempty = ""
  (<>) = (++)

instance monoidArray :: Monoid [a] where
  mempty = []
  (<>) = Data.Array.concat
