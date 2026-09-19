module Units.Conversions.Mass
  ( toKilograms,
  )
where

import Units.Types
import Units.Types.Internal (Kilograms (..))

-- Conversion from linear meters to Square meters
toKilograms :: SquareMeters -> GramsPerSquareMeter -> Kilograms
toKilograms squareMeters grammage =
  Kilograms $
    squareMetersValue squareMeters
      * gramsPerSquareMeterValue grammage
      / 1000

