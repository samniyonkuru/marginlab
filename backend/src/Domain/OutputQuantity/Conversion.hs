module Domain.OutputQuantity.Conversion where

import Units.Types
import Domain.OutputQuantity.Types
import Units.Types.Internal (LinearMeters (..))

toLinearMetersFromSquareMeters :: SquareMeters -> Width -> LinearMeters
toLinearMetersFromSquareMeters squareMeters width =
  LinearMeters(squareMetersValue(squareMeters)/ widthValue(width) * 1000)

toLinearMetersFromKilograms:: Kilograms -> MaterialYield -> Width -> LinearMeters
toLinearMetersFromKilograms kilograms yield width =
  LinearMeters(kilogramsValue(kilograms) * materialYieldValue(yield) / widthValue(width) * 1000)

toLinearMetersFromPieces:: Pieces-> Cutoff -> LinearMeters
toLinearMetersFromPieces pieces cutoff =
  LinearMeters(fromIntegral(piecesValue(pieces)) * cutoffValue(cutoff) / 1000)

toLinearMeters :: OutputQuantity -> LinearMeters
toLinearMeters output =
  case output of
    OutLinearMeters lm -> lm 
    OutSquareMeters sqm width -> toLinearMetersFromSquareMeters sqm width
    OutKilograms kg materialYield width -> toLinearMetersFromKilograms kg materialYield width
    OutPieces pcs cutoff -> toLinearMetersFromPieces pcs cutoff
