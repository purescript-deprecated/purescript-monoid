module Data.Monoid where

import Prelude (Semigroup)

class (Semigroup m) <= Monoid m where
  mempty :: m

instance monoidString :: Monoid String where
  mempty = ""
