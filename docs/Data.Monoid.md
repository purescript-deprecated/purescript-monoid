# Module Documentation

## Module Data.Monoid

#### `Monoid`

``` purescript
class (Semigroup m) <= Monoid m where
  mempty :: m
```

A `Monoid` is a `Semigroup` with a value `mempty`, which is both a
left and right unit for the associative operation `<>`:

```text
forall x. mempty <> x = x <> mempty = x
```

`Monoid`s are commonly used as the result of fold operations, where
`<>` is used to combine individual results, and `mempty` gives the result
of folding an empty collection of elements.

#### `monoidUnit`

``` purescript
instance monoidUnit :: Monoid Unit
```


#### `monoidFn`

``` purescript
instance monoidFn :: (Monoid b) => Monoid (a -> b)
```


#### `monoidString`

``` purescript
instance monoidString :: Monoid String
```


#### `monoidArray`

``` purescript
instance monoidArray :: Monoid (Array a)
```




