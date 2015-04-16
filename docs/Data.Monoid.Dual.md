# Module Documentation

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

#### `runDual`

``` purescript
runDual :: forall a. Dual a -> a
```


#### `eqDual`

``` purescript
instance eqDual :: (Eq a) => Eq (Dual a)
```


#### `ordDual`

``` purescript
instance ordDual :: (Ord a) => Ord (Dual a)
```


#### `functorDual`

``` purescript
instance functorDual :: Functor Dual
```


#### `applyDual`

``` purescript
instance applyDual :: Apply Dual
```


#### `applicativeDual`

``` purescript
instance applicativeDual :: Applicative Dual
```


#### `bindDual`

``` purescript
instance bindDual :: Bind Dual
```


#### `monadDual`

``` purescript
instance monadDual :: Monad Dual
```


#### `extendDual`

``` purescript
instance extendDual :: Extend Dual
```


#### `comonadDual`

``` purescript
instance comonadDual :: Comonad Dual
```


#### `showDual`

``` purescript
instance showDual :: (Show a) => Show (Dual a)
```


#### `semigroupDual`

``` purescript
instance semigroupDual :: (Semigroup a) => Semigroup (Dual a)
```


#### `monoidDual`

``` purescript
instance monoidDual :: (Monoid a) => Monoid (Dual a)
```




