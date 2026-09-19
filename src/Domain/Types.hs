module Domain.Types
  ( LinearMeters,
    mkLinearMeters,
    linearMetersValue,
    Width,
    mkWidth,
    widthValue,
    SquareMeters,
    mkSquareMeters,
    squareMetersValue,
  )
where

import Domain.Types.Internal

mkLinearMeters :: Double -> Maybe LinearMeters
mkLinearMeters value
  | value < 0 = Nothing
  | otherwise = Just (LinearMeters value)

linearMetersValue :: LinearMeters -> Double
linearMetersValue (LinearMeters value) = value

mkWidth :: Double -> Maybe Width
mkWidth value
  | value < 0 = Nothing
  | otherwise = Just (Width value)

widthValue :: Width -> Double
widthValue (Width value) = value

mkSquareMeters :: Double -> Maybe SquareMeters
mkSquareMeters value
  | value < 0 = Nothing
  | otherwise = Just (SquareMeters value)

squareMetersValue :: SquareMeters -> Double
squareMetersValue (SquareMeters value) = value
