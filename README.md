# Module Documentation

## Module Data.Monoid

### Type Classes

#### `Monoid`

    class (Semigroup m) <= Monoid m where
      mempty :: m


### Type Class Instances

#### `monoidArr`

    instance monoidArr :: (Monoid b) => Monoid (a -> b)

#### `monoidArray`

    instance monoidArray :: Monoid [a]

#### `monoidMaybe`

    instance monoidMaybe :: (Semigroup a) => Monoid (Maybe a)

#### `monoidString`

    instance monoidString :: Monoid String

#### `monoidUnit`

    instance monoidUnit :: Monoid Unit


## Module Data.Monoid.Additive

### Types

#### `Additive`

    newtype Additive a
      = Additive a


### Type Class Instances

#### `applicativeAdditive`

    instance applicativeAdditive :: Applicative Additive

#### `applyAdditive`

    instance applyAdditive :: Apply Additive

#### `bindAdditive`

    instance bindAdditive :: Bind Additive

#### `eqAdditive`

    instance eqAdditive :: (Eq a) => Eq (Additive a)

#### `functorAdditive`

    instance functorAdditive :: Functor Additive

#### `monadAdditive`

    instance monadAdditive :: Monad Additive

#### `monoidAdditive`

    instance monoidAdditive :: (Semiring a) => Monoid (Additive a)

#### `ordAdditive`

    instance ordAdditive :: (Ord a) => Ord (Additive a)

#### `semigroupAdditive`

    instance semigroupAdditive :: (Semiring a) => Semigroup (Additive a)

#### `showAdditive`

    instance showAdditive :: (Show a) => Show (Additive a)


### Values

#### `runAdditive`

    runAdditive :: forall a. Additive a -> a


## Module Data.Monoid.All

### Types

#### `All`

    newtype All
      = All Boolean


### Type Class Instances

#### `eqAll`

    instance eqAll :: Eq All

#### `monoidAll`

    instance monoidAll :: Monoid All

#### `semigroupAll`

    instance semigroupAll :: Semigroup All

#### `showAll`

    instance showAll :: Show All


### Values

#### `runAll`

    runAll :: All -> Boolean


## Module Data.Monoid.Any

### Types

#### `Any`

    newtype Any
      = Any Boolean


### Type Class Instances

#### `eqAny`

    instance eqAny :: Eq Any

#### `monoidAny`

    instance monoidAny :: Monoid Any

#### `semigroupAny`

    instance semigroupAny :: Semigroup Any

#### `showAny`

    instance showAny :: Show Any


### Values

#### `runAny`

    runAny :: Any -> Boolean


## Module Data.Monoid.Dual

### Types

#### `Dual`

    newtype Dual a
      = Dual a


### Type Class Instances

#### `eqDual`

    instance eqDual :: (Eq a) => Eq (Dual a)

#### `monoidDual`

    instance monoidDual :: (Monoid a) => Monoid (Dual a)

#### `ordDual`

    instance ordDual :: (Ord a) => Ord (Dual a)

#### `semigroupDual`

    instance semigroupDual :: (Semigroup a) => Semigroup (Dual a)

#### `showDual`

    instance showDual :: (Show a) => Show (Dual a)


### Values

#### `runDual`

    runDual :: forall a. Dual a -> a


## Module Data.Monoid.Endo

### Types

#### `Endo`

    newtype Endo a
      = Endo (a -> a)


### Type Class Instances

#### `monoidEndo`

    instance monoidEndo :: Monoid (Endo a)

#### `semigroupEndo`

    instance semigroupEndo :: Semigroup (Endo a)


### Values

#### `runEndo`

    runEndo :: forall a. Endo a -> a -> a


## Module Data.Monoid.First

### Types

#### `First`

    newtype First a
      = First (Maybe a)


### Type Class Instances

#### `eqFirst`

    instance eqFirst :: (Eq a) => Eq (First a)

#### `monoidFirst`

    instance monoidFirst :: Monoid (First a)

#### `ordFirst`

    instance ordFirst :: (Ord a) => Ord (First a)

#### `semigroupFirst`

    instance semigroupFirst :: Semigroup (First a)

#### `showFirst`

    instance showFirst :: (Show a) => Show (First a)


### Values

#### `runFirst`

    runFirst :: forall a. First a -> Maybe a


## Module Data.Monoid.Last

### Types

#### `Last`

    newtype Last a
      = Last (Maybe a)


### Type Class Instances

#### `eqLast`

    instance eqLast :: (Eq a) => Eq (Last a)

#### `monoidLast`

    instance monoidLast :: Monoid (Last a)

#### `ordLast`

    instance ordLast :: (Ord a) => Ord (Last a)

#### `semigroupLast`

    instance semigroupLast :: Semigroup (Last a)

#### `showLast`

    instance showLast :: (Show a) => Show (Last a)


### Values

#### `runLast`

    runLast :: forall a. Last a -> Maybe a


## Module Data.Monoid.Multiplicative

### Types

#### `Multiplicative`

    newtype Multiplicative a
      = Multiplicative a


### Type Class Instances

#### `applicativeMultiplicative`

    instance applicativeMultiplicative :: Applicative Multiplicative

#### `applyMultiplicative`

    instance applyMultiplicative :: Apply Multiplicative

#### `bindMultiplicative`

    instance bindMultiplicative :: Bind Multiplicative

#### `eqMultiplicative`

    instance eqMultiplicative :: (Eq a) => Eq (Multiplicative a)

#### `functorMultiplicative`

    instance functorMultiplicative :: Functor Multiplicative

#### `monadMultiplicative`

    instance monadMultiplicative :: Monad Multiplicative

#### `monoidMultiplicative`

    instance monoidMultiplicative :: (Semiring a) => Monoid (Multiplicative a)

#### `ordMultiplicative`

    instance ordMultiplicative :: (Ord a) => Ord (Multiplicative a)

#### `semigroupMultiplicative`

    instance semigroupMultiplicative :: (Semiring a) => Semigroup (Multiplicative a)

#### `showMultiplicative`

    instance showMultiplicative :: (Show a) => Show (Multiplicative a)


### Values

#### `runMultiplicative`

    runMultiplicative :: forall a. Multiplicative a -> a


## Module Data.Monoid.Product

### Types

#### `Product`

    newtype Product
      = Product Number


### Type Class Instances

#### `eqProduct`

    instance eqProduct :: Eq Product

#### `monoidProduct`

    instance monoidProduct :: Monoid Product

#### `ordProduct`

    instance ordProduct :: Ord Product

#### `semigroupProduct`

    instance semigroupProduct :: Semigroup Product

#### `showProduct`

    instance showProduct :: Show Product


### Values

#### `runProduct`

    runProduct :: Product -> Number


## Module Data.Monoid.Sum

### Types

#### `Sum`

    newtype Sum
      = Sum Number


### Type Class Instances

#### `eqSum`

    instance eqSum :: Eq Sum

#### `monoidSum`

    instance monoidSum :: Monoid Sum

#### `ordSum`

    instance ordSum :: Ord Sum

#### `semigroupSum`

    instance semigroupSum :: Semigroup Sum

#### `showSum`

    instance showSum :: Show Sum


### Values

#### `runSum`

    runSum :: Sum -> Number