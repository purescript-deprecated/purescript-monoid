module Data.Monoid.Conjunction where

import Control.Comonad
import Control.Extend
import Data.Monoid

-- | Lattice monoid and semigroup under conjunction/infimum.
-- |
-- | ``` purescript
-- | Conjunction x <> Conjunction y == Conjunction (x && y)
-- | mempty :: Conjunction _ == Conjunction bottom
-- | ```
newtype Conjunction a = Conjunction a

runConjunction :: forall a. Conjunction a -> a
runConjunction (Conjunction x) = x

instance eqConjunction :: (Eq a) => Eq (Conjunction a) where
  (==) (Conjunction x) (Conjunction y) = x == y
  (/=) (Conjunction x) (Conjunction y) = x /= y

instance ordConjunction :: (Ord a) => Ord (Conjunction a) where
  compare (Conjunction x) (Conjunction y) = compare x y

instance functorConjunction :: Functor Conjunction where
  (<$>) f (Conjunction x) = Conjunction (f x)

instance applyConjunction :: Apply Conjunction where
  (<*>) (Conjunction f) (Conjunction x) = Conjunction (f x)

instance applicativeConjunction :: Applicative Conjunction where
  pure = Conjunction

instance bindConjunction :: Bind Conjunction where
  (>>=) (Conjunction x) f = f x

instance monadConjunction :: Monad Conjunction

instance extendConjunction :: Extend Conjunction where
  (<<=) f x = Conjunction (f x)

instance comonadConjunction :: Comonad Conjunction where
  extract = runConjunction

instance showConjunction :: (Show a) => Show (Conjunction a) where
  show (Conjunction a) = "Conjunction (" ++ show a ++ ")"

instance semigroupConjunction :: (Lattice a) => Semigroup (Conjunction a) where
  (<>) (Conjunction a) (Conjunction b) = Conjunction (a && b)

instance monoidConjunction :: (Lattice a) => Monoid (Conjunction a) where
  mempty = Conjunction bottom
