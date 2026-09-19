module Units.Conversions.Area
  ( toSquareMeters,
  )
where

import Units.Types
import Units.Types.Internal (SquareMeters (..))

-- Conversion from linear meters to Square meters
toSquareMeters :: LinearMeters -> Width -> SquareMeters
toSquareMeters linearMeters width =
  SquareMeters $
    linearMetersValue linearMeters
      * widthValue width
      / 1000

