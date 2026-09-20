module Main where

import qualified Domain.OutputQuantity.ConversionSpec
import Test.Hspec
import qualified Units.TypesSpec

main :: IO ()
main =
  hspec $ do
    Units.TypesSpec.spec
    Domain.OutputQuantity.ConversionSpec.spec
