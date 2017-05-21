import Test.Hspec
import Control.Exception (evaluate)
import Lib

main :: IO ()
main = hspec $ do
  describe "arabicToRoman" $ do
    it "Converts 1 to I" $ do
      (arabicToRoman 1) `shouldBe` "I"

    it "Converts 2 to II" $ do
      (arabicToRoman 2) `shouldBe` "II"

    it "Converts 4 to IV" $ do
      (arabicToRoman 4) `shouldBe` "IV"
