## Module Data.Monoid.Conj

#### `Conj`

``` purescript
newtype Conj a
  = Conj a
```

Monoid under conjuntion.

``` purescript
Conj x <> Conj y == Conj (x && y)
mempty :: Conj _ == Conj top
```

##### Instances
``` purescript
instance eqConj :: (Eq a) => Eq (Conj a)
instance ordConj :: (Ord a) => Ord (Conj a)
instance boundedConj :: (Bounded a) => Bounded (Conj a)
instance functorConj :: Functor Conj
instance applyConj :: Apply Conj
instance applicativeConj :: Applicative Conj
instance bindConj :: Bind Conj
instance monadConj :: Monad Conj
instance extendConj :: Extend Conj
instance comonadConj :: Comonad Conj
instance showConj :: (Show a) => Show (Conj a)
instance semigroupConj :: (BooleanAlgebra a) => Semigroup (Conj a)
instance monoidConj :: (BooleanAlgebra a) => Monoid (Conj a)
instance semiringConj :: (BooleanAlgebra a) => Semiring (Conj a)
```

#### `runConj`

``` purescript
runConj :: forall a. Conj a -> a
```


