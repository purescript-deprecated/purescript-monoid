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

##### Instances
``` purescript
instance invariantEndo :: Invariant Endo
instance semigroupEndo :: Semigroup (Endo a)
instance monoidEndo :: Monoid (Endo a)
```

#### `runEndo`

``` purescript
runEndo :: forall a. Endo a -> a -> a
```


