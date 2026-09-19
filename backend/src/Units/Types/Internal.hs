module Units.Types.Internal
  ( LinearMeters (..),
    SquareMeters (..),
    Kilograms (..),
    Pieces (..),
    Width (..),
    Cutoff (..),
    GramsPerSquareMeter (..),
  )
where

newtype LinearMeters = LinearMeters Double
  deriving (Show, Eq)

newtype SquareMeters = SquareMeters Double
  deriving (Show, Eq)

newtype Kilograms = Kilograms Double
  deriving (Show, Eq)
  
newtype Pieces = Pieces Int
  deriving (Show, Eq)

newtype Width = Width Double
  deriving (Show, Eq)

newtype Cutoff = Cutoff Double
  deriving (Show, Eq)

newtype GramsPerSquareMeter = GramsPerSquareMeter Double
  deriving (Show, Eq)
