## Module Data.Monoid.Multiplicative

#### `Multiplicative`

``` purescript
newtype Multiplicative a
  = Multiplicative a
```

Monoid and semigroup for semirings under multiplication.

``` purescript
Multiplicative x <> Multiplicative y == Multiplicative (x * y)
mempty :: Multiplicative _ == Multiplicative one
```

##### Instances
``` purescript
instance eqMultiplicative :: (Eq a) => Eq (Multiplicative a)
instance ordMultiplicative :: (Ord a) => Ord (Multiplicative a)
instance functorMultiplicative :: Functor Multiplicative
instance applyMultiplicative :: Apply Multiplicative
instance applicativeMultiplicative :: Applicative Multiplicative
instance bindMultiplicative :: Bind Multiplicative
instance monadMultiplicative :: Monad Multiplicative
instance extendMultiplicative :: Extend Multiplicative
instance comonadMultiplicative :: Comonad Multiplicative
instance invariantMultiplicative :: Invariant Multiplicative
instance showMultiplicative :: (Show a) => Show (Multiplicative a)
instance semigroupMultiplicative :: (Semiring a) => Semigroup (Multiplicative a)
instance monoidMultiplicative :: (Semiring a) => Monoid (Multiplicative a)
```

#### `runMultiplicative`

``` purescript
runMultiplicative :: forall a. Multiplicative a -> a
```


