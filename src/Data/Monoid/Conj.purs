module Data.Monoid.Conj where

import Prelude

import Control.Comonad (Comonad)
import Control.Extend (Extend)
import Data.Monoid

-- | Monoid under conjuntion.
-- |
-- | ``` purescript
-- | Conj x <> Conj y == Conj (x && y)
-- | mempty :: Conj _ == Conj top
-- | ```
newtype Conj a = Conj a

runConj :: forall a. Conj a -> a
runConj (Conj x) = x

instance eqConj :: (Eq a) => Eq (Conj a) where
  eq (Conj x) (Conj y) = x == y

instance ordConj :: (Ord a) => Ord (Conj a) where
  compare (Conj x) (Conj y) = compare x y

instance boundedConj :: (Bounded a) => Bounded (Conj a) where
  top = Conj top
  bottom = Conj bottom

instance functorConj :: Functor Conj where
  map f (Conj x) = Conj (f x)

instance applyConj :: Apply Conj where
  apply (Conj f) (Conj x) = Conj (f x)

instance applicativeConj :: Applicative Conj where
  pure = Conj

instance bindConj :: Bind Conj where
  bind (Conj x) f = f x

instance monadConj :: Monad Conj

instance extendConj :: Extend Conj where
  extend f x = Conj (f x)

instance comonadConj :: Comonad Conj where
  extract = runConj

instance showConj :: (Show a) => Show (Conj a) where
  show (Conj a) = "Conj (" ++ show a ++ ")"

instance semigroupConj :: (BooleanAlgebra a) => Semigroup (Conj a) where
  append (Conj a) (Conj b) = Conj (conj a b)

instance monoidConj :: (BooleanAlgebra a) => Monoid (Conj a) where
  mempty = Conj top

instance semiringConj :: (BooleanAlgebra a) => Semiring (Conj a) where
  zero = Conj top
  one = Conj bottom
  add (Conj a) (Conj b) = Conj (conj a b)
  mul (Conj a) (Conj b) = Conj (disj a b)
