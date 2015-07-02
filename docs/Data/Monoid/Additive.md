## Module Data.Monoid.Additive

#### `Additive`

``` purescript
newtype Additive a
  = Additive a
```

Monoid and semigroup for semirings under addition.

``` purescript
Additive x <> Additive y == Additive (x + y)
mempty :: Additive _ == Additive zero
```

##### Instances
``` purescript
instance eqAdditive :: (Eq a) => Eq (Additive a)
instance ordAdditive :: (Ord a) => Ord (Additive a)
instance functorAdditive :: Functor Additive
instance applyAdditive :: Apply Additive
instance applicativeAdditive :: Applicative Additive
instance bindAdditive :: Bind Additive
instance monadAdditive :: Monad Additive
instance extendAdditive :: Extend Additive
instance comonadAdditive :: Comonad Additive
instance invariantAdditive :: Invariant Additive
instance showAdditive :: (Show a) => Show (Additive a)
instance semigroupAdditive :: (Semiring a) => Semigroup (Additive a)
instance monoidAdditive :: (Semiring a) => Monoid (Additive a)
```

#### `runAdditive`

``` purescript
runAdditive :: forall a. Additive a -> a
```


