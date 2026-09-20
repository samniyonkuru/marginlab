module Main where

import qualified Domain.InputQuantity.ConversionSpec
import Test.Hspec
import qualified Units.TypesSpec

main :: IO ()
main =
  hspec $ do
    Units.TypesSpec.spec
    Domain.InputQuantity.ConversionSpec.spec
