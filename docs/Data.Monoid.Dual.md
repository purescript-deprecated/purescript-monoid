## Module Data.Monoid.Dual

#### `Dual`

``` purescript
newtype Dual a
  = Dual a
```

The dual of a monoid.

``` purescript
Dual x <> Dual y == Dual (y <> x)
mempty :: Dual _ == Dual mempty
```

##### Instances
``` purescript
instance eqDual :: (Eq a) => Eq (Dual a)
instance ordDual :: (Ord a) => Ord (Dual a)
instance functorDual :: Functor Dual
instance applyDual :: Apply Dual
instance applicativeDual :: Applicative Dual
instance bindDual :: Bind Dual
instance monadDual :: Monad Dual
instance extendDual :: Extend Dual
instance comonadDual :: Comonad Dual
instance invariantDual :: Invariant Dual
instance showDual :: (Show a) => Show (Dual a)
instance semigroupDual :: (Semigroup a) => Semigroup (Dual a)
instance monoidDual :: (Monoid a) => Monoid (Dual a)
```

#### `runDual`

``` purescript
runDual :: forall a. Dual a -> a
```


