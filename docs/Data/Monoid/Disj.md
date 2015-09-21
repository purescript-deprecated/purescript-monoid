## Module Data.Monoid.Disj

#### `Disj`

``` purescript
newtype Disj a
  = Disj a
```

Monoid under disjuntion.

``` purescript
Disj x <> Disj y == Disj (x || y)
mempty :: Disj _ == Disj bottom
```

##### Instances
``` purescript
instance eqDisj :: (Eq a) => Eq (Disj a)
instance ordDisj :: (Ord a) => Ord (Disj a)
instance boundedDisj :: (Bounded a) => Bounded (Disj a)
instance functorDisj :: Functor Disj
instance applyDisj :: Apply Disj
instance applicativeDisj :: Applicative Disj
instance bindDisj :: Bind Disj
instance monadDisj :: Monad Disj
instance extendDisj :: Extend Disj
instance comonadDisj :: Comonad Disj
instance showDisj :: (Show a) => Show (Disj a)
instance semigroupDisj :: (BooleanAlgebra a) => Semigroup (Disj a)
instance monoidDisj :: (BooleanAlgebra a) => Monoid (Disj a)
instance semiringDisj :: (BooleanAlgebra a) => Semiring (Disj a)
```

#### `runDisj`

``` purescript
runDisj :: forall a. Disj a -> a
```


