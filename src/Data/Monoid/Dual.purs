module Data.Monoid.Dual where

import Prelude

import Control.Comonad (Comonad)
import Control.Extend (Extend)

import Data.Functor.Invariant (Invariant)
import Data.Monoid (Monoid, mempty)

-- | The dual of a monoid.
-- |
-- | ``` purescript
-- | Dual x <> Dual y == Dual (y <> x)
-- | mempty :: Dual _ == Dual mempty
-- | ```
newtype Dual a = Dual a

runDual :: forall a. Dual a -> a
runDual (Dual x) = x

instance eqDual :: (Eq a) => Eq (Dual a) where
  eq (Dual x) (Dual y) = x == y

instance ordDual :: (Ord a) => Ord (Dual a) where
  compare (Dual x) (Dual y) = compare x y

instance functorDual :: Functor Dual where
  map f (Dual x) = Dual (f x)

instance applyDual :: Apply Dual where
  apply (Dual f) (Dual x) = Dual (f x)

instance applicativeDual :: Applicative Dual where
  pure = Dual

instance bindDual :: Bind Dual where
  bind (Dual x) f = f x

instance monadDual :: Monad Dual

instance extendDual :: Extend Dual where
  extend f x = Dual (f x)

instance comonadDual :: Comonad Dual where
  extract = runDual

instance invariantDual :: Invariant Dual where
  imap f _ (Dual x) = Dual (f x)

instance showDual :: (Show a) => Show (Dual a) where
  show (Dual a) = "Dual (" ++ show a ++ ")"

instance semigroupDual :: (Semigroup a) => Semigroup (Dual a) where
  append (Dual x) (Dual y) = Dual (y <> x)

instance monoidDual :: (Monoid a) => Monoid (Dual a) where
  mempty = Dual mempty
