module Units.TypesSpec (spec) where

import Units.Types
import Test.Hspec

spec :: Spec
spec = do
-- Linear Meters
  describe "LinearMeters" $ do
    it "rejects negative linear meters" $ do
      mkLinearMeters (-1) `shouldBe` Nothing

    it "accepts zero linear meters" $ do
      fmap linearMetersValue (mkLinearMeters 0) `shouldBe` Just 0

    it "accepts positive linear meters" $ do
      fmap linearMetersValue (mkLinearMeters 1500) `shouldBe` Just 1500

-- Width
  describe "Width" $ do
    it "rejects negative width" $ do
      mkWidth (-1) `shouldBe` Nothing

    it "accepts zero width" $ do
      fmap widthValue (mkWidth 0) `shouldBe` Just 0

    it "accepts positive width" $ do
      fmap widthValue (mkWidth 1500) `shouldBe` Just 1500

-- Grams per square meters
  describe "GramsPerSquareMeter" $ do
    it "rejects negative gramsPerSquareMeter" $ do
      mkGramsPerSquareMeter (-1) `shouldBe` Nothing

    it "accepts zero gramsPerSquareMeter" $ do
      fmap gramsPerSquareMeterValue (mkGramsPerSquareMeter 0) `shouldBe` Just 0

    it "accepts positive gramsPerSquareMeter" $ do
      fmap gramsPerSquareMeterValue (mkGramsPerSquareMeter 1500) `shouldBe` Just 1500

-- Kilograms
  describe "Kilograms" $ do
    it "rejects negative gramsPerSquareMeter" $ do
      mkKilograms (-1) `shouldBe` Nothing

    it "accepts zero gramsPerSquareMeter" $ do
      fmap kilogramsValue (mkKilograms 0) `shouldBe` Just 0

    it "accepts positive gramsPerSquareMeter" $ do
      fmap kilogramsValue (mkKilograms 1500) `shouldBe` Just 1500
