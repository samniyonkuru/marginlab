module Units.TypesSpec (spec) where

import Units.Types
import Test.Hspec

spec :: Spec
spec = do

-- Linear meters
  describe "LinearMeters" $ do
    it "rejects negative linear meters" $ do
      mkLinearMeters (-1) `shouldBe` Nothing

    it "accepts zero linear meters" $ do
      fmap linearMetersValue (mkLinearMeters 0) `shouldBe` Just 0

    it "accepts positive linear meters" $ do
      fmap linearMetersValue (mkLinearMeters 1500) `shouldBe` Just 1500

-- Square meters
  describe "SquareMeters" $ do
    it "rejects negative square meters" $ do
      mkSquareMeters (-1) `shouldBe` Nothing

    it "accepts zero square meters" $ do
      fmap squareMetersValue (mkSquareMeters 0) `shouldBe` Just 0

    it "accepts positive square meters" $ do
      fmap squareMetersValue (mkSquareMeters 1500) `shouldBe` Just 1500

-- Kilograms
  describe "Kilograms" $ do
    it "rejects negative kilograms" $ do
      mkKilograms (-1) `shouldBe` Nothing

    it "accepts zero kilograms" $ do
      fmap kilogramsValue (mkKilograms 0) `shouldBe` Just 0

    it "accepts positive kilograms" $ do
      fmap kilogramsValue (mkKilograms 1500) `shouldBe` Just 1500

-- Pieces
  describe "Pieces" $ do
    it "rejects negative pieces" $ do
      mkPieces (-1) `shouldBe` Nothing

    it "accepts zero pieces" $ do
      fmap piecesValue (mkPieces 0) `shouldBe` Just 0

    it "accepts positive pieces" $ do
      fmap piecesValue (mkPieces 1500) `shouldBe` Just 1500

-- Width
  describe "Width" $ do
    it "rejects negative width" $ do
      mkWidth (-1) `shouldBe` Nothing

    it "reject zero width" $ do
      fmap widthValue (mkWidth 0) `shouldBe` Nothing

    it "accepts positive width" $ do
      fmap widthValue (mkWidth 1500) `shouldBe` Just 1500

-- Cutoff
  describe "Cutoff" $ do
    it "rejects negative cutoff" $ do
      mkCutoff (-1) `shouldBe` Nothing

    it "accepts zero cutoff" $ do
      fmap cutoffValue (mkCutoff 0) `shouldBe` Just 0

    it "accepts positive cutoff" $ do
      fmap cutoffValue (mkCutoff 1500) `shouldBe` Just 1500

-- Material yield
  describe "MaterialYield" $ do
    it "rejects negative material yield" $ do
      mkMaterialYield (-1) `shouldBe` Nothing

    it "accepts zero material yield" $ do
      fmap materialYieldValue (mkMaterialYield 0) `shouldBe` Just 0

    it "accepts positive material yield" $ do
      fmap materialYieldValue (mkMaterialYield 1500) `shouldBe` Just 1500

