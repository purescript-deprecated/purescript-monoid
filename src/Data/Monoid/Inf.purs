module Data.Monoid.Inf where

import Control.Comonad (Comonad)
import Control.Extend (Extend)
import Data.Monoid

-- | Lattice monoid and semigroup under conjunction/infimum.
-- |
-- | ``` purescript
-- | Inf x <> Inf y == Inf (x && y)
-- | mempty :: Inf _ == Inf bottom
-- | ```
newtype Inf a = Inf a

runInf :: forall a. Inf a -> a
runInf (Inf x) = x

instance eqInf :: (Eq a) => Eq (Inf a) where
  (==) (Inf x) (Inf y) = x == y
  (/=) (Inf x) (Inf y) = x /= y

instance ordInf :: (Ord a) => Ord (Inf a) where
  compare (Inf x) (Inf y) = compare x y

instance boundedInf :: (Bounded a) => Bounded (Inf a) where
  top = Inf top
  bottom = Inf bottom

instance functorInf :: Functor Inf where
  (<$>) f (Inf x) = Inf (f x)

instance applyInf :: Apply Inf where
  (<*>) (Inf f) (Inf x) = Inf (f x)

instance applicativeInf :: Applicative Inf where
  pure = Inf

instance bindInf :: Bind Inf where
  (>>=) (Inf x) f = f x

instance monadInf :: Monad Inf

instance extendInf :: Extend Inf where
  (<<=) f x = Inf (f x)

instance comonadInf :: Comonad Inf where
  extract = runInf

instance showInf :: (Show a) => Show (Inf a) where
  show (Inf a) = "Inf (" ++ show a ++ ")"

instance semigroupInf :: (Lattice a) => Semigroup (Inf a) where
  (<>) (Inf a) (Inf b) = Inf (a && b)

instance monoidInf :: (BoundedLattice a) => Monoid (Inf a) where
  mempty = Inf bottom
