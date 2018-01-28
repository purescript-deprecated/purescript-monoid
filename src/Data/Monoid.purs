module Data.Monoid
  ( class Monoid, mempty
  , power
  , guard
  , module Data.Semigroup
  ) where

import Prelude
import Data.Semigroup (class Semigroup, append, (<>))

-- | A `Monoid` is a `Semigroup` with a value `mempty`, which is both a
-- | left and right unit for the associative operation `<>`:
-- |
-- | ```text
-- | forall x. mempty <> x = x <> mempty = x
-- | ```
-- |
-- | `Monoid`s are commonly used as the result of fold operations, where
-- | `<>` is used to combine individual results, and `mempty` gives the result
-- | of folding an empty collection of elements.
class Semigroup m <= Monoid m where
  mempty :: m

instance monoidUnit :: Monoid Unit where
  mempty = unit

instance monoidOrdering :: Monoid Ordering where
  mempty = EQ

instance monoidFn :: Monoid b => Monoid (a -> b) where
  mempty = const mempty

instance monoidString :: Monoid String where
  mempty = ""

instance monoidArray :: Monoid (Array a) where
  mempty = []

-- | Append a value to itself a certain number of times. For the
-- | `Multiplicative` type, and for a non-negative power, this is the same as
-- | normal number exponentiation.
-- |
-- | If the second argument is negative this function will return `mempty`
-- | (*unlike* normal number exponentiation). The `Monoid` constraint alone
-- | is not enough to write a `power` function with the property that `power x
-- | n` cancels with `power x (-n)`, i.e. `power x n <> power x (-n) = mempty`.
-- | For that, we would additionally need the ability to invert elements, i.e.
-- | a Group.
power :: forall m. Monoid m => m -> Int -> m
power x p
  | p <= 0    = mempty
  | otherwise = go p
  where
  -- optimize dictionary lookup
  append :: m -> m -> m
  append = (<>)

  go :: Int -> m
  go p'
    | p' `mod` 2 == 0 = let x' = go (p'/2) in x' `append` x'
    | p' == 1         = x
    | otherwise      = let x' = go (p'/2) in x' `append` x' `append` x

-- | Allow or "truncate" a Monoid to its `mempty` value based on a condition.
guard :: forall m. Monoid m => Boolean -> m -> m
guard true a = a
guard false _ = mempty
