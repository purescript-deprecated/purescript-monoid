# Module Documentation

## Module Data.Monoid.Sup

#### `Sup`

``` purescript
newtype Sup a
  = Sup a
```

Lattice monoid and semigroup under disjunction/supremum.

``` purescript
Sup x <> Sup y == Sup (x || y)
mempty :: Sup _ == Sup top
```

#### `runSup`

``` purescript
runSup :: forall a. Sup a -> a
```


#### `eqSup`

``` purescript
instance eqSup :: (Eq a) => Eq (Sup a)
```


#### `ordSup`

``` purescript
instance ordSup :: (Ord a) => Ord (Sup a)
```


#### `boundedSup`

``` purescript
instance boundedSup :: (Bounded a) => Bounded (Sup a)
```


#### `functorSup`

``` purescript
instance functorSup :: Functor Sup
```


#### `applySup`

``` purescript
instance applySup :: Apply Sup
```


#### `applicativeSup`

``` purescript
instance applicativeSup :: Applicative Sup
```


#### `bindSup`

``` purescript
instance bindSup :: Bind Sup
```


#### `monadSup`

``` purescript
instance monadSup :: Monad Sup
```


#### `extendSup`

``` purescript
instance extendSup :: Extend Sup
```


#### `comonadSup`

``` purescript
instance comonadSup :: Comonad Sup
```


#### `showSup`

``` purescript
instance showSup :: (Show a) => Show (Sup a)
```


#### `semigroupSup`

``` purescript
instance semigroupSup :: (Lattice a) => Semigroup (Sup a)
```


#### `monoidSup`

``` purescript
instance monoidSup :: (BoundedLattice a) => Monoid (Sup a)
```




