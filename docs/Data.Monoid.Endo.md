# Module Documentation

## Module Data.Monoid.Endo

#### `Endo`

``` purescript
newtype Endo a
  = Endo (a -> a)
```

Monoid of endomorphisms under composition.

Composes of functions of type `a -> a`:
``` purescript
Endo f <> Endo g == Endo (f <<< g)
mempty :: Endo _ == Endo id
```

#### `runEndo`

``` purescript
runEndo :: forall a. Endo a -> a -> a
```


#### `semigroupEndo`

``` purescript
instance semigroupEndo :: Semigroup (Endo a)
```


#### `monoidEndo`

``` purescript
instance monoidEndo :: Monoid (Endo a)
```




