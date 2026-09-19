module Units.Conversions.AreaSpec (spec) where

import Units.Conversions.Area
import Units.Types
import Test.Hspec

spec :: Spec
spec = do
  describe "toSquareMeters" $ do
    it "calculates square meters from linear meters and width" $ do
      let result = do
            linearMeters <- mkLinearMeters 1500
            width <- mkWidth 500
            pure $ squareMetersValue (toSquareMeters linearMeters width)

      result `shouldBe` Just 750
