module Data.Monoid.Disjunction where

import Control.Comonad
import Control.Extend
import Data.Monoid

-- | Lattice monoid and semigroup under disjunction/supremum.
-- |
-- | ``` purescript
-- | Disjunction x <> Disjunction y == Disjunction (x || y)
-- | mempty :: Disjunction _ == Disjunction top
-- | ```
newtype Disjunction a = Disjunction a

runDisjunction :: forall a. Disjunction a -> a
runDisjunction (Disjunction x) = x

instance eqDisjunction :: (Eq a) => Eq (Disjunction a) where
  (==) (Disjunction x) (Disjunction y) = x == y
  (/=) (Disjunction x) (Disjunction y) = x /= y

instance ordDisjunction :: (Ord a) => Ord (Disjunction a) where
  compare (Disjunction x) (Disjunction y) = compare x y

instance functorDisjunction :: Functor Disjunction where
  (<$>) f (Disjunction x) = Disjunction (f x)

instance applyDisjunction :: Apply Disjunction where
  (<*>) (Disjunction f) (Disjunction x) = Disjunction (f x)

instance applicativeDisjunction :: Applicative Disjunction where
  pure = Disjunction

instance bindDisjunction :: Bind Disjunction where
  (>>=) (Disjunction x) f = f x

instance monadDisjunction :: Monad Disjunction

instance extendDisjunction :: Extend Disjunction where
  (<<=) f x = Disjunction (f x)

instance comonadDisjunction :: Comonad Disjunction where
  extract = runDisjunction

instance showDisjunction :: (Show a) => Show (Disjunction a) where
  show (Disjunction a) = "Disjunction (" ++ show a ++ ")"

instance semigroupDisjunction :: (Lattice a) => Semigroup (Disjunction a) where
  (<>) (Disjunction a) (Disjunction b) = Disjunction (a || b)

instance monoidDisjunction :: (Lattice a) => Monoid (Disjunction a) where
  mempty = Disjunction top
