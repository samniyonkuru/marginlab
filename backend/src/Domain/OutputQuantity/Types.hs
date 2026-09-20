module Domain.OutputQuantity.Types where

import Units.Types

data OutputQuantity
  = OutLinearMeters LinearMeters
  | OutSquareMeters SquareMeters Width
  | OutKilograms Kilograms MaterialYield Width
  | OutPieces Pieces Cutoff
