module Data.Monoid.Last where

import Control.Comonad
import Control.Extend
import Data.Maybe
import Data.Monoid

-- | Monoid returning the last (right-most) non-Nothing value.
-- |
-- | ``` purescript
-- | First First (Just x) <> First (Just y) == First (Just y)
-- | First First (Just x) <> Nothing == First (Just x)
-- | First Nothing <> Nothing == First Nothing
-- | mempty :: First _ == First Nothing
-- | ```
newtype Last a = Last (Maybe a)

runLast :: forall a. Last a -> Maybe a
runLast (Last m) = m

instance eqLast :: (Eq a) => Eq (Last a) where
  (==) (Last x) (Last y) = x == y
  (/=) (Last x) (Last y) = x /= y

instance ordLast :: (Ord a) => Ord (Last a) where
  compare (Last x) (Last y) = compare x y

instance functorLast :: Functor Last where
  (<$>) f (Last x) = Last (f <$> x)

instance applyLast :: Apply Last where
  (<*>) (Last f) (Last x) = Last (f <*> x)

instance applicativeLast :: Applicative Last where
  pure = Last <<< pure

instance bindLast :: Bind Last where
  (>>=) (Last x) f = Last (x >>= runLast <<< f)

instance monadLast :: Monad Last

instance extendLast :: Extend Last where
  (<<=) f x = f <<= x

instance showLast :: (Show a) => Show (Last a) where
  show (Last a) = "Last (" ++ show a ++ ")"

instance semigroupLast :: Semigroup (Last a) where
  (<>) _ last@(Last (Just _)) = last
  (<>) last (Last Nothing)    = last

instance monoidLast :: Monoid (Last a) where
  mempty = Last Nothing
