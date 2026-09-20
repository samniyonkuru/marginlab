module Domain.OutputQuantity.ConversionSpec (spec) where

import Test.Hspec
import Units.Types
import Domain.OutputQuantity.Types
import Domain.OutputQuantity.Conversion

spec :: Spec
spec = do

-- Linear meters
  describe "toLinearMeters" $ do
    it "keeps linear meters unchanged" $ do
      let result = do
            lm <- mkLinearMeters 2000
            
            pure $
              toLinearMeters
                (OutLinearMeters lm)

      fmap linearMetersValue result
        `shouldBe` Just 2000

-- Square meters
  describe "toLinearMetersFromSquareMeters" $ do
    it "converts square meters to linear meters" $ do
      let result = do
            squareMeters <- mkSquareMeters 1000
            width <- mkWidth 500

            pure $
              toLinearMetersFromSquareMeters
                squareMeters
                width

      fmap linearMetersValue result
        `shouldBe` Just 2000

-- Kilograms
  describe "toLinearMetersFromKilograms" $ do
    it "converts kilogrmas to linear meters" $ do
      let result = do
            kilograms <- mkKilograms 1000
            materialYield <- mkMaterialYield 1
            width <- mkWidth 500

            pure $
              toLinearMetersFromKilograms
                kilograms
                materialYield
                width

      fmap linearMetersValue result
        `shouldBe` Just 2000

-- Pieces
  describe "toLinearMetersFromPieces" $ do
    it "converts pieces to linear meters" $ do
      let result = do
            pieces <- mkPieces 4000
            cutoff <- mkCutoff 500

            pure $
              toLinearMetersFromPieces
                pieces 
                cutoff

      fmap linearMetersValue result
        `shouldBe` Just 2000
