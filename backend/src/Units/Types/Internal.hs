module Units.Types.Internal
  ( LinearMeters (..),
    Width (..),
    SquareMeters (..),
  )
where

newtype LinearMeters = LinearMeters Double
  deriving (Show, Eq)

newtype Width = Width Double
  deriving (Show, Eq)

newtype SquareMeters = SquareMeters Double
  deriving (Show, Eq)
