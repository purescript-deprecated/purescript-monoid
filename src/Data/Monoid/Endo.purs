module Data.Monoid.Endo where

import Prelude

import Data.Functor.Invariant (class Invariant)
import Data.Monoid (class Monoid)
import Data.Newtype (class Newtype)

-- | Monoid of endomorphisms under composition.
-- |
-- | Composes morphisms of type `c a a`:
-- | ``` purescript
-- | Endo f <> Endo g == Endo (f <<< g)
-- | mempty :: Endo _ == Endo id
-- | ```
newtype Endo c a = Endo (c a a)

derive instance newtypeEndo :: Newtype (Endo c a) _

instance invariantEndo :: Invariant (Endo (->)) where
  imap ab ba (Endo f) = Endo (ab <<< f <<< ba)

instance semigroupEndo :: Semigroupoid c => Semigroup (Endo c a) where
  append (Endo f) (Endo g) = Endo (f <<< g)

instance monoidEndo :: Category c => Monoid (Endo c a) where
  mempty = Endo id
