module Data.Monoid.Sup where

import Control.Comonad (Comonad)
import Control.Extend (Extend)
import Data.Monoid

-- | Lattice monoid and semigroup under disjunction/supremum.
-- |
-- | ``` purescript
-- | Sup x <> Sup y == Sup (x || y)
-- | mempty :: Sup _ == Sup top
-- | ```
newtype Sup a = Sup a

runSup :: forall a. Sup a -> a
runSup (Sup x) = x

instance eqSup :: (Eq a) => Eq (Sup a) where
  eq (Sup x) (Sup y) = x == y

instance ordSup :: (Ord a) => Ord (Sup a) where
  compare (Sup x) (Sup y) = compare x y

instance boundedSup :: (Bounded a) => Bounded (Sup a) where
  top = Sup top
  bottom = Sup bottom

instance functorSup :: Functor Sup where
  map f (Sup x) = Sup (f x)

instance applySup :: Apply Sup where
  apply (Sup f) (Sup x) = Sup (f x)

instance applicativeSup :: Applicative Sup where
  pure = Sup

instance bindSup :: Bind Sup where
  bind (Sup x) f = f x

instance monadSup :: Monad Sup

instance extendSup :: Extend Sup where
  extend f x = Sup (f x)

instance comonadSup :: Comonad Sup where
  extract = runSup

instance showSup :: (Show a) => Show (Sup a) where
  show (Sup a) = "Sup (" ++ show a ++ ")"

instance semigroupSup :: (Lattice a) => Semigroup (Sup a) where
  append (Sup a) (Sup b) = Sup (a || b)

instance monoidSup :: (BoundedLattice a) => Monoid (Sup a) where
  mempty = Sup bottom
