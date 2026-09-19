module Units.Conversions.SquareMetersSpec (spec) where

import Units.Conversions.SquareMeters
import Units.Types
import Test.Hspec

spec :: Spec
spec = do
  describe "calculateSquareMeters" $ do
    it "calculates square meters from linear meters and width" $ do
      let result = do
            linearMeters <- mkLinearMeters 1500
            width <- mkWidth 500
            pure $ squareMetersValue (calculateSquareMeters linearMeters width)

      result `shouldBe` Just 750
