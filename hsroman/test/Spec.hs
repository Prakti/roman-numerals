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

    it "Converts 5 to V" $ do
      (arabicToRoman 5) `shouldBe` "V"

    it "Converts 6 to VI" $ do
      (arabicToRoman 6) `shouldBe` "VI"

    it "Converts 9 to IX" $ do
      (arabicToRoman 9) `shouldBe` "IX"

    it "Converts 11 to XI" $ do
      (arabicToRoman 11) `shouldBe` "XI"

    it "Converts 14 to XIV" $ do
      (arabicToRoman 14) `shouldBe` "XIV"

    it "Converts 20 to XX" $ do
      (arabicToRoman 20) `shouldBe` "XX"

    it "Converts 29 to XXIX" $ do
      (arabicToRoman 29) `shouldBe` "XXIX"

    it "Converts 49 to XLIX" $ do
      (arabicToRoman 49) `shouldBe` "XLIX"

    it "Converts 54 to LIV" $ do
      (arabicToRoman 54) `shouldBe` "LIV"

    it "Converts 69 to LXIX" $ do
      (arabicToRoman 69) `shouldBe` "LXIX"

    it "Converts 91 to XCI" $ do
      (arabicToRoman 91) `shouldBe` "XCI"

    it "Converts 159 to CXLIX" $ do
      (arabicToRoman 159) `shouldBe` "CLIX"

    it "Converts 499 to CDXCIX" $ do
      (arabicToRoman 499) `shouldBe` "CDXCIX"

    it "Converts 600 to DC" $ do
      (arabicToRoman 600) `shouldBe` "DC"

    it "Converts 900 to CM" $ do
      (arabicToRoman 900) `shouldBe` "CM"

    it "Converts 2000 to MM" $ do
      (arabicToRoman 2000) `shouldBe` "MM"
