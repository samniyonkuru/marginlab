module Domain.InputQuantity.Conversion where

import Units.Types
import Domain.InputQuantity.Types
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

toLinearMeters :: InputQuantity -> LinearMeters
toLinearMeters input =
  case input of
    InLinearMeters lm -> lm 
    InSquareMeters sqm width -> toLinearMetersFromSquareMeters sqm width
    InKilograms kg materialYield width -> toLinearMetersFromKilograms kg materialYield width
    InPieces pcs cutoff -> toLinearMetersFromPieces pcs cutoff
