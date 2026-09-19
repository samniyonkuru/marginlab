module Main (main) where

import qualified Units.Conversions.AreaSpec
import qualified Units.Conversions.MassSpec
import qualified Units.TypesSpec
import Test.Hspec

main :: IO ()
main = hspec $ do
  Units.TypesSpec.spec
  Units.Conversions.AreaSpec.spec
  Units.Conversions.MassSpec.spec
