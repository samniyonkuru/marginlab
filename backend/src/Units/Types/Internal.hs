module Units.Types.Internal
  ( LinearMeters (..),
    Width (..),
    SquareMeters (..),
    GramsPerSquareMeter (..),
    Kilograms (..),
  )
where

newtype LinearMeters = LinearMeters Double
  deriving (Show, Eq)

newtype Width = Width Double
  deriving (Show, Eq)

newtype SquareMeters = SquareMeters Double
  deriving (Show, Eq)

newtype GramsPerSquareMeter = GramsPerSquareMeter Double
  deriving (Show, Eq)

newtype Kilograms = Kilograms Double
  deriving (Show, Eq)
