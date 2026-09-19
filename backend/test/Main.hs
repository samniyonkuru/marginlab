module Main (main) where

import qualified Units.Conversions.SquareMetersSpec
import qualified Units.TypesSpec
import Test.Hspec

main :: IO ()
main = hspec $ do
  Units.TypesSpec.spec
  Units.Conversions.SquareMetersSpec.spec
