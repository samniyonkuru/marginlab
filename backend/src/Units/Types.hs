module Units.Types
  ( LinearMeters,
    mkLinearMeters,
    linearMetersValue,
    Width,
    mkWidth,
    widthValue,
    SquareMeters,
    mkSquareMeters,
    squareMetersValue,
    GramsPerSquareMeter,
    mkGramsPerSquareMeter,
    gramsPerSquareMeterValue,
    Kilograms,
    mkKilograms,
    kilogramsValue,
  )
where

import Units.Types.Internal

-- Linear Meters
mkLinearMeters :: Double -> Maybe LinearMeters
mkLinearMeters value
  | value < 0 = Nothing
  | otherwise = Just (LinearMeters value)

linearMetersValue :: LinearMeters -> Double
linearMetersValue (LinearMeters value) = value

-- Width
mkWidth :: Double -> Maybe Width
mkWidth value
  | value < 0 = Nothing
  | otherwise = Just (Width value)

widthValue :: Width -> Double
widthValue (Width value) = value

-- Square meters
mkSquareMeters :: Double -> Maybe SquareMeters
mkSquareMeters value
  | value < 0 = Nothing
  | otherwise = Just (SquareMeters value)

squareMetersValue :: SquareMeters -> Double
squareMetersValue (SquareMeters value) = value

-- Grams per square meter 
mkGramsPerSquareMeter :: Double -> Maybe GramsPerSquareMeter
mkGramsPerSquareMeter value
  | value < 0 = Nothing
  | otherwise = Just (GramsPerSquareMeter value)

gramsPerSquareMeterValue :: GramsPerSquareMeter -> Double
gramsPerSquareMeterValue (GramsPerSquareMeter value) = value

-- Kilograms
mkKilograms :: Double -> Maybe Kilograms
mkKilograms value
  | value < 0 = Nothing
  | otherwise = Just (Kilograms value)

kilogramsValue :: Kilograms -> Double
kilogramsValue (Kilograms value) = value
