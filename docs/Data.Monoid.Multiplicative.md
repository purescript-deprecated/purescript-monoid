# Module Documentation

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

#### `runMultiplicative`

``` purescript
runMultiplicative :: forall a. Multiplicative a -> a
```


#### `eqMultiplicative`

``` purescript
instance eqMultiplicative :: (Eq a) => Eq (Multiplicative a)
```


#### `ordMultiplicative`

``` purescript
instance ordMultiplicative :: (Ord a) => Ord (Multiplicative a)
```


#### `functorMultiplicative`

``` purescript
instance functorMultiplicative :: Functor Multiplicative
```


#### `applyMultiplicative`

``` purescript
instance applyMultiplicative :: Apply Multiplicative
```


#### `applicativeMultiplicative`

``` purescript
instance applicativeMultiplicative :: Applicative Multiplicative
```


#### `bindMultiplicative`

``` purescript
instance bindMultiplicative :: Bind Multiplicative
```


#### `monadMultiplicative`

``` purescript
instance monadMultiplicative :: Monad Multiplicative
```


#### `extendMultiplicative`

``` purescript
instance extendMultiplicative :: Extend Multiplicative
```


#### `comonadMultiplicative`

``` purescript
instance comonadMultiplicative :: Comonad Multiplicative
```


#### `invariantMultiplicative`

``` purescript
instance invariantMultiplicative :: Invariant Multiplicative
```


#### `showMultiplicative`

``` purescript
instance showMultiplicative :: (Show a) => Show (Multiplicative a)
```


#### `semigroupMultiplicative`

``` purescript
instance semigroupMultiplicative :: (Semiring a) => Semigroup (Multiplicative a)
```


#### `monoidMultiplicative`

``` purescript
instance monoidMultiplicative :: (Semiring a) => Monoid (Multiplicative a)
```




