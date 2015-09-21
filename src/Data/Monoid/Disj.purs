module Data.Monoid.Disj where

import Prelude

import Control.Comonad (Comonad)
import Control.Extend (Extend)
import Data.Monoid

-- | Monoid under disjuntion.
-- |
-- | ``` purescript
-- | Disj x <> Disj y == Disj (x || y)
-- | mempty :: Disj _ == Disj bottom
-- | ```
newtype Disj a = Disj a

runDisj :: forall a. Disj a -> a
runDisj (Disj x) = x

instance eqDisj :: (Eq a) => Eq (Disj a) where
  eq (Disj x) (Disj y) = x == y

instance ordDisj :: (Ord a) => Ord (Disj a) where
  compare (Disj x) (Disj y) = compare x y

instance boundedDisj :: (Bounded a) => Bounded (Disj a) where
  top = Disj top
  bottom = Disj bottom

instance functorDisj :: Functor Disj where
  map f (Disj x) = Disj (f x)

instance applyDisj :: Apply Disj where
  apply (Disj f) (Disj x) = Disj (f x)

instance applicativeDisj :: Applicative Disj where
  pure = Disj

instance bindDisj :: Bind Disj where
  bind (Disj x) f = f x

instance monadDisj :: Monad Disj

instance extendDisj :: Extend Disj where
  extend f x = Disj (f x)

instance comonadDisj :: Comonad Disj where
  extract = runDisj

instance showDisj :: (Show a) => Show (Disj a) where
  show (Disj a) = "Disj (" ++ show a ++ ")"

instance semigroupDisj :: (BooleanAlgebra a) => Semigroup (Disj a) where
  append (Disj a) (Disj b) = Disj (disj a b)

instance monoidDisj :: (BooleanAlgebra a) => Monoid (Disj a) where
  mempty = Disj bottom

instance semiringDisj :: (BooleanAlgebra a) => Semiring (Disj a) where
  zero = Disj bottom
  one = Disj top
  add (Disj a) (Disj b) = Disj (disj a b)
  mul (Disj a) (Disj b) = Disj (conj a b)
