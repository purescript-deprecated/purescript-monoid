module Data.Monoid.Endo where

import Data.Functor.Invariant (Invariant, imap)
import Data.Monoid

-- | Monoid of endomorphisms under composition.
-- |
-- | Composes of functions of type `a -> a`:
-- | ``` purescript
-- | Endo f <> Endo g == Endo (f <<< g)
-- | mempty :: Endo _ == Endo id
-- | ```
newtype Endo a = Endo (a -> a)

runEndo :: forall a. Endo a -> a -> a
runEndo (Endo f) = f

instance invariantEndo :: Invariant Endo where
  imap ab ba (Endo f) = Endo (ab <<< f <<< ba)

instance semigroupEndo :: Semigroup (Endo a) where
  append (Endo f) (Endo g) = Endo (f <<< g)

instance monoidEndo :: Monoid (Endo a) where
  mempty = Endo id
