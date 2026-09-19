module Units.Types
  ( LinearMeters,
    mkLinearMeters,
    linearMetersValue,
    SquareMeters,
    mkSquareMeters,
    squareMetersValue,
    Kilograms,
    mkKilograms,
    kilogramsValue,
    Pieces,
    mkPieces,
    piecesValue,
    Width,
    mkWidth,
    widthValue,
    GramsPerSquareMeter,
    Cutoff,
    mkCutoff,
    cutoffValue,
    mkGramsPerSquareMeter,
    gramsPerSquareMeterValue,
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

-- Square meters
mkSquareMeters :: Double -> Maybe SquareMeters
mkSquareMeters value
  | value < 0 = Nothing
  | otherwise = Just (SquareMeters value)

squareMetersValue :: SquareMeters -> Double
squareMetersValue (SquareMeters value) = value

-- Kilograms
mkKilograms :: Double -> Maybe Kilograms
mkKilograms value
  | value < 0 = Nothing
  | otherwise = Just (Kilograms value)

kilogramsValue :: Kilograms -> Double
kilogramsValue (Kilograms value) = value

-- Pieces
mkPieces :: Int -> Maybe Pieces
mkPieces value
  | value < 0 = Nothing
  | otherwise = Just (Pieces value)

piecesValue :: Pieces -> Int
piecesValue (Pieces value) = value

-- Width
mkWidth :: Double -> Maybe Width
mkWidth value
  | value < 0 = Nothing
  | otherwise = Just (Width value)

widthValue :: Width -> Double
widthValue (Width value) = value

-- Cutoff
mkCutoff :: Double -> Maybe Cutoff
mkCutoff value
  | value < 0 = Nothing
  | otherwise = Just (Cutoff value)

cutoffValue :: Cutoff -> Double
cutoffValue (Cutoff value) = value
--
-- Grams per square meter 
mkGramsPerSquareMeter :: Double -> Maybe GramsPerSquareMeter
mkGramsPerSquareMeter value
  | value < 0 = Nothing
  | otherwise = Just (GramsPerSquareMeter value)

gramsPerSquareMeterValue :: GramsPerSquareMeter -> Double
gramsPerSquareMeterValue (GramsPerSquareMeter value) = value

