# Module Documentation

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

#### `runAdditive`

``` purescript
runAdditive :: forall a. Additive a -> a
```


#### `eqAdditive`

``` purescript
instance eqAdditive :: (Eq a) => Eq (Additive a)
```


#### `ordAdditive`

``` purescript
instance ordAdditive :: (Ord a) => Ord (Additive a)
```


#### `functorAdditive`

``` purescript
instance functorAdditive :: Functor Additive
```


#### `applyAdditive`

``` purescript
instance applyAdditive :: Apply Additive
```


#### `applicativeAdditive`

``` purescript
instance applicativeAdditive :: Applicative Additive
```


#### `bindAdditive`

``` purescript
instance bindAdditive :: Bind Additive
```


#### `monadAdditive`

``` purescript
instance monadAdditive :: Monad Additive
```


#### `extendAdditive`

``` purescript
instance extendAdditive :: Extend Additive
```


#### `comonadAdditive`

``` purescript
instance comonadAdditive :: Comonad Additive
```


#### `showAdditive`

``` purescript
instance showAdditive :: (Show a) => Show (Additive a)
```


#### `semigroupAdditive`

``` purescript
instance semigroupAdditive :: (Semiring a) => Semigroup (Additive a)
```


#### `monoidAdditive`

``` purescript
instance monoidAdditive :: (Semiring a) => Monoid (Additive a)
```




