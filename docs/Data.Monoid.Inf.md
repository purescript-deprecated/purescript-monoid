## Module Data.Monoid.Inf

#### `Inf`

``` purescript
newtype Inf a
  = Inf a
```

##### Instances
``` purescript
instance eqInf :: (Eq a) => Eq (Inf a)
instance ordInf :: (Ord a) => Ord (Inf a)
instance boundedInf :: (Bounded a) => Bounded (Inf a)
instance functorInf :: Functor Inf
instance applyInf :: Apply Inf
instance applicativeInf :: Applicative Inf
instance bindInf :: Bind Inf
instance monadInf :: Monad Inf
instance extendInf :: Extend Inf
instance comonadInf :: Comonad Inf
instance showInf :: (Show a) => Show (Inf a)
instance semigroupInf :: (Lattice a) => Semigroup (Inf a)
instance monoidInf :: (BoundedLattice a) => Monoid (Inf a)
```

Lattice monoid and semigroup under conjunction/infimum.

``` purescript
Inf x <> Inf y == Inf (x && y)
mempty :: Inf _ == Inf top
```

#### `runInf`

``` purescript
runInf :: forall a. Inf a -> a
```


