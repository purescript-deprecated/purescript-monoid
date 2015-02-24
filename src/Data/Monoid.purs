module Data.Monoid where

import Data.Array ()
import Data.Maybe

-- | A `Monoid` is a `Semigroup` with a value `mempty`, which is both a
-- | left and right unit for the associative operation `<>`:
-- |
-- | ```text
-- | forall x. mempty <> x = x <> mempty = x
-- | ```
-- | 
-- | `Monoid`s are commonly used as the result of fold operations, where
-- | `<>` is used to combine individual results, and `mempty` gives the result
-- | of folding an empty collection of elements.
class (Semigroup m) <= Monoid m where
  mempty :: m

instance monoidString :: Monoid String where
  mempty = ""

instance monoidArray :: Monoid [a] where
  mempty = []

instance monoidUnit :: Monoid Unit where
  mempty = unit

instance monoidArr :: (Monoid b) => Monoid (a -> b) where
  mempty = const mempty

instance monoidMaybe :: (Semigroup a) => Monoid (Maybe a) where
  mempty = Nothing
