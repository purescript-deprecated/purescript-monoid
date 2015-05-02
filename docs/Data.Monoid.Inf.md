# Module Documentation

## Module Data.Monoid.Inf

#### `Inf`

``` purescript
newtype Inf a
  = Inf a
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


#### `eqInf`

``` purescript
instance eqInf :: (Eq a) => Eq (Inf a)
```


#### `ordInf`

``` purescript
instance ordInf :: (Ord a) => Ord (Inf a)
```


#### `boundedInf`

``` purescript
instance boundedInf :: (Bounded a) => Bounded (Inf a)
```


#### `functorInf`

``` purescript
instance functorInf :: Functor Inf
```


#### `applyInf`

``` purescript
instance applyInf :: Apply Inf
```


#### `applicativeInf`

``` purescript
instance applicativeInf :: Applicative Inf
```


#### `bindInf`

``` purescript
instance bindInf :: Bind Inf
```


#### `monadInf`

``` purescript
instance monadInf :: Monad Inf
```


#### `extendInf`

``` purescript
instance extendInf :: Extend Inf
```


#### `comonadInf`

``` purescript
instance comonadInf :: Comonad Inf
```


#### `showInf`

``` purescript
instance showInf :: (Show a) => Show (Inf a)
```


#### `semigroupInf`

``` purescript
instance semigroupInf :: (Lattice a) => Semigroup (Inf a)
```


#### `monoidInf`

``` purescript
instance monoidInf :: (BoundedLattice a) => Monoid (Inf a)
```




