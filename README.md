# Data.Monoid

### Type Classes

    class (Semigroup m) <= Monoid m where
      mempty :: m

### Type Class Instances

    instance monoidArray :: Monoid [a]

    instance monoidString :: Monoid Prim.String



## Data.Monoid.Dual

### Types

    data Dual a where
      Dual :: a -> Dual a

### Type Class Instances

    instance eqDual :: (Eq a) => Eq (Dual a)

    instance monoidDual :: (Monoid a) => Monoid (Dual a)

    instance ordDual :: (Ord a) => Ord (Dual a)

    instance semigroupDual :: (Semigroup a) => Semigroup (Dual a)

    instance showDual :: (Show a) => Show (Dual a)

### Values

    runDual :: forall a. Dual a -> a
    


## Data.Monoid.Endo

### Types

    data Endo a where
      Endo :: a -> a -> Endo a

### Type Class Instances

    instance monoidEndo :: Monoid (Endo a)

    instance semigroupEndo :: Semigroup (Endo a)

### Values

    runEndo :: forall a. Endo a -> a -> a
    


## Data.Monoid.All

### Types

    data All  where
      All :: Prim.Boolean -> All 

### Type Class Instances

    instance eqAll :: Eq All

    instance monoidAll :: Monoid All

    instance semigroupAll :: Semigroup All

    instance showAll :: Show All

### Values

    runAll :: All -> Prim.Boolean
    


## Data.Monoid.Any

### Types

    data Any  where
      Any :: Prim.Boolean -> Any 

### Type Class Instances

    instance eqAny :: Eq Any

    instance monoidAny :: Monoid Any

    instance semigroupAny :: Semigroup Any

    instance showAny :: Show Any

### Values

    runAny :: Any -> Prim.Boolean
    


## Data.Monoid.First

### Types

    data First a where
      First :: Maybe a -> First a

### Type Class Instances

    instance eqFirst :: (Eq a) => Eq (First a)

    instance monoidFirst :: Monoid (First a)

    instance ordFirst :: (Ord a) => Ord (First a)

    instance semigroupFirst :: Semigroup (First a)

    instance showFirst :: (Show a) => Show (First a)

### Values

    runFirst :: forall a. First a -> Maybe a
    


## Data.Monoid.Last

### Types

    data Last a where
      Last :: Maybe a -> Last a

### Type Class Instances

    instance eqLast :: (Eq a) => Eq (Last a)

    instance monoidLast :: Monoid (Last a)

    instance ordLast :: (Ord a) => Ord (Last a)

    instance semigroupLast :: Semigroup (Last a)

    instance showLast :: (Show a) => Show (Last a)

### Values

    runLast :: forall a. Last a -> Maybe a
    


## Data.Monoid.Product

### Types

    data Product  where
      Product :: Prim.Number -> Product 

### Type Class Instances

    instance eqProduct :: Eq Product

    instance monoidProduct :: Monoid Product

    instance ordProduct :: Ord Product

    instance semigroupProduct :: Semigroup Product

    instance showProduct :: Show Product

### Values

    runProduct :: Product -> Prim.Number
    


## Data.Monoid.Sum

### Types

    data Sum  where
      Sum :: Prim.Number -> Sum 

### Type Class Instances

    instance eqSum :: Eq Sum

    instance monoidSum :: Monoid Sum

    instance ordSum :: Ord Sum

    instance semigroupSum :: Semigroup Sum

    instance showSum :: Show Sum

### Values

    runSum :: Sum -> Prim.Number
