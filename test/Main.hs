module Main (main) where

import Domain.SquareMeters
import Domain.Types
import Test.Hspec

main :: IO ()
main = hspec $ do
  describe "LinearMeters" $ do
    it "rejects negative linear meters" $ do
      mkLinearMeters (-1) `shouldBe` Nothing

    it "accepts zero linear meters" $ do
      fmap linearMetersValue (mkLinearMeters 0) `shouldBe` Just 0

    it "accepts positive linear meters" $ do
      fmap linearMetersValue (mkLinearMeters 1500) `shouldBe` Just 1500

  describe "Width" $ do
    it "rejects negative width" $ do
      mkWidth (-1) `shouldBe` Nothing

    it "accepts zero width" $ do
      fmap widthValue (mkWidth 0) `shouldBe` Just 0

    it "accepts positive width" $ do
      fmap widthValue (mkWidth 1500) `shouldBe` Just 1500

  describe "calculateSquareMeters" $ do
    it "calculates square meters from linear meters and width" $ do
      let result = do
            linearMeters <- mkLinearMeters 1500
            width <- mkWidth 500
            pure $ squareMetersValue (calculateSquareMeters linearMeters width)

      result `shouldBe` Just 750
