module Data.Monoid.Multiplicative where

import Prelude

import Control.Comonad (Comonad)
import Control.Extend (Extend)

import Data.Functor.Invariant (Invariant)
import Data.Monoid (Monoid)

-- | Monoid and semigroup for semirings under multiplication.
-- |
-- | ``` purescript
-- | Multiplicative x <> Multiplicative y == Multiplicative (x * y)
-- | mempty :: Multiplicative _ == Multiplicative one
-- | ```
newtype Multiplicative a = Multiplicative a

runMultiplicative :: forall a. Multiplicative a -> a
runMultiplicative (Multiplicative x) = x

instance eqMultiplicative :: (Eq a) => Eq (Multiplicative a) where
  eq (Multiplicative x) (Multiplicative y) = x == y

instance ordMultiplicative :: (Ord a) => Ord (Multiplicative a) where
  compare (Multiplicative x) (Multiplicative y) = compare x y

instance functorMultiplicative :: Functor Multiplicative where
  map f (Multiplicative x) = Multiplicative (f x)

instance applyMultiplicative :: Apply Multiplicative where
  apply (Multiplicative f) (Multiplicative x) = Multiplicative (f x)

instance applicativeMultiplicative :: Applicative Multiplicative where
  pure = Multiplicative

instance bindMultiplicative :: Bind Multiplicative where
  bind (Multiplicative x) f = f x

instance monadMultiplicative :: Monad Multiplicative

instance extendMultiplicative :: Extend Multiplicative where
  extend f x = Multiplicative (f x)

instance comonadMultiplicative :: Comonad Multiplicative where
  extract = runMultiplicative

instance invariantMultiplicative :: Invariant Multiplicative where
  imap f _ (Multiplicative x) = Multiplicative (f x)

instance showMultiplicative :: (Show a) => Show (Multiplicative a) where
  show (Multiplicative a) = "Multiplicative (" ++ show a ++ ")"

instance semigroupMultiplicative :: (Semiring a) => Semigroup (Multiplicative a) where
  append (Multiplicative a) (Multiplicative b) = Multiplicative (a * b)

instance monoidMultiplicative :: (Semiring a) => Monoid (Multiplicative a) where
  mempty = Multiplicative one
