module Units.Conversions.SquareMeters
  ( calculateSquareMeters,
  )
where

import Units.Types
import Units.Types.Internal (SquareMeters (..))

calculateSquareMeters :: LinearMeters -> Width -> SquareMeters
calculateSquareMeters linearMeters width =
  SquareMeters $
    linearMetersValue linearMeters
      * widthValue width
      / 1000
