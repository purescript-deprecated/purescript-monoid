## Module Data.Monoid.Sup

#### `Sup`

``` purescript
newtype Sup a
  = Sup a
```

##### Instances
``` purescript
instance eqSup :: (Eq a) => Eq (Sup a)
instance ordSup :: (Ord a) => Ord (Sup a)
instance boundedSup :: (Bounded a) => Bounded (Sup a)
instance functorSup :: Functor Sup
instance applySup :: Apply Sup
instance applicativeSup :: Applicative Sup
instance bindSup :: Bind Sup
instance monadSup :: Monad Sup
instance extendSup :: Extend Sup
instance comonadSup :: Comonad Sup
instance showSup :: (Show a) => Show (Sup a)
instance semigroupSup :: (Lattice a) => Semigroup (Sup a)
instance monoidSup :: (BoundedLattice a) => Monoid (Sup a)
```

Lattice monoid and semigroup under disjunction/supremum.

``` purescript
Sup x <> Sup y == Sup (x || y)
mempty :: Sup _ == Sup bottom
```

#### `runSup`

``` purescript
runSup :: forall a. Sup a -> a
```


