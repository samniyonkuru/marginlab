module Domain.InputQuantity.Types where

import Units.Types

data InputQuantity
  = InLinearMeters LinearMeters
  | InSquareMeters SquareMeters Width
  | InKilograms Kilograms MaterialYield Width
  | InPieces Pieces Cutoff
