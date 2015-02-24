# Breaking Change Notice

`purescript-monoid` v0.2.0 requires PureScript v0.6.8 or later as previously the `Semiring` class did not exist in `Prelude`.

----

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

#### `monoidString`

``` purescript
instance monoidString :: Monoid String
```


#### `monoidArray`

``` purescript
instance monoidArray :: Monoid [a]
```


#### `monoidUnit`

``` purescript
instance monoidUnit :: Monoid Unit
```


#### `monoidArr`

``` purescript
instance monoidArr :: (Monoid b) => Monoid (a -> b)
```


#### `monoidMaybe`

``` purescript
instance monoidMaybe :: (Semigroup a) => Monoid (Maybe a)
```



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



## Module Data.Monoid.All

#### `All`

``` purescript
newtype All
  = All Boolean
```

Boolean monoid and semigroup under conjunction.

``` purescript
All x <> All y == All (x && y)
mempty :: All == All true
```

#### `runAll`

``` purescript
runAll :: All -> Boolean
```


#### `eqAll`

``` purescript
instance eqAll :: Eq All
```


#### `ordAll`

``` purescript
instance ordAll :: Ord All
```


#### `showAll`

``` purescript
instance showAll :: Show All
```


#### `semigroupAll`

``` purescript
instance semigroupAll :: Semigroup All
```


#### `monoidAll`

``` purescript
instance monoidAll :: Monoid All
```



## Module Data.Monoid.Any

#### `Any`

``` purescript
newtype Any
  = Any Boolean
```

Boolean monoid and semigroup under disjunction.

``` purescript
Any x <> Any y == Any (x || y)
mempty :: Any == Any false
```

#### `runAny`

``` purescript
runAny :: Any -> Boolean
```


#### `eqAny`

``` purescript
instance eqAny :: Eq Any
```


#### `ordAny`

``` purescript
instance ordAny :: Ord Any
```


#### `showAny`

``` purescript
instance showAny :: Show Any
```


#### `semigroupAny`

``` purescript
instance semigroupAny :: Semigroup Any
```


#### `monoidAny`

``` purescript
instance monoidAny :: Monoid Any
```



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



## Module Data.Monoid.First

#### `First`

``` purescript
newtype First a
  = First (Maybe a)
```

Monoid returning the first (left-most) non-Nothing value.

``` purescript
First (Just x) <> First (Just y) == First (Just x)
First Nothing <> First (Just y) == First (Just x)
First Nothing <> Nothing == First Nothing
mempty :: First _ == First Nothing
```

#### `runFirst`

``` purescript
runFirst :: forall a. First a -> Maybe a
```


#### `eqFirst`

``` purescript
instance eqFirst :: (Eq a) => Eq (First a)
```


#### `ordFirst`

``` purescript
instance ordFirst :: (Ord a) => Ord (First a)
```


#### `functorFirst`

``` purescript
instance functorFirst :: Functor First
```


#### `applyFirst`

``` purescript
instance applyFirst :: Apply First
```


#### `applicativeFirst`

``` purescript
instance applicativeFirst :: Applicative First
```


#### `bindFirst`

``` purescript
instance bindFirst :: Bind First
```


#### `monadFirst`

``` purescript
instance monadFirst :: Monad First
```


#### `extendFirst`

``` purescript
instance extendFirst :: Extend First
```


#### `showFirst`

``` purescript
instance showFirst :: (Show a) => Show (First a)
```


#### `semigroupFirst`

``` purescript
instance semigroupFirst :: Semigroup (First a)
```


#### `monoidFirst`

``` purescript
instance monoidFirst :: Monoid (First a)
```



## Module Data.Monoid.Last

#### `Last`

``` purescript
newtype Last a
  = Last (Maybe a)
```

Monoid returning the last (right-most) non-Nothing value.

``` purescript
Last (Just x) <> Last (Just y) == Last (Just y)
Last (Just x) <> Nothing == Last (Just x)
Last Nothing <> Nothing == Last Nothing
mempty :: Last _ == Last Nothing
```

#### `runLast`

``` purescript
runLast :: forall a. Last a -> Maybe a
```


#### `eqLast`

``` purescript
instance eqLast :: (Eq a) => Eq (Last a)
```


#### `ordLast`

``` purescript
instance ordLast :: (Ord a) => Ord (Last a)
```


#### `functorLast`

``` purescript
instance functorLast :: Functor Last
```


#### `applyLast`

``` purescript
instance applyLast :: Apply Last
```


#### `applicativeLast`

``` purescript
instance applicativeLast :: Applicative Last
```


#### `bindLast`

``` purescript
instance bindLast :: Bind Last
```


#### `monadLast`

``` purescript
instance monadLast :: Monad Last
```


#### `extendLast`

``` purescript
instance extendLast :: Extend Last
```


#### `showLast`

``` purescript
instance showLast :: (Show a) => Show (Last a)
```


#### `semigroupLast`

``` purescript
instance semigroupLast :: Semigroup (Last a)
```


#### `monoidLast`

``` purescript
instance monoidLast :: Monoid (Last a)
```



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


#### `extendAdditive`

``` purescript
instance extendAdditive :: Extend Multiplicative
```


#### `comonadAdditive`

``` purescript
instance comonadAdditive :: Comonad Multiplicative
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
