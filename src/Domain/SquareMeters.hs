module Domain.SquareMeters
  ( calculateSquareMeters,
  )
where

import Domain.Types
import Domain.Types.Internal (SquareMeters (..))

calculateSquareMeters :: LinearMeters -> Width -> SquareMeters
calculateSquareMeters linearMeters width =
  SquareMeters $
    linearMetersValue linearMeters
      * widthValue width
      / 1000
