module Units.Conversions.MassSpec (spec) where

import Test.Hspec
import Units.Conversions.Mass
import Units.Types

spec :: Spec
spec = do
  describe "toKilograms" $ do
    it "calculates kilograms from square meters and grams per square meter" $ do
      let result = do
            squareMeters <- mkSquareMeters 1000
            grammage <- mkGramsPerSquareMeter 25
            pure $ kilogramsValue (toKilograms squareMeters grammage)

      result `shouldBe` Just 25
