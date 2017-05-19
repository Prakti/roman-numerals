defmodule MalixirTest do
  use ExUnit.Case, async: true

  describe "arabicToRoman/2" do
    test "one" do
      assert Malixir.arabicToRoman(1) == "I"
    end

    test "two" do
      assert Malixir.arabicToRoman(2) == "II"
    end

    test "three" do
      assert Malixir.arabicToRoman(3) == "III"
    end

    test "four" do
      assert Malixir.arabicToRoman(4) == "IV"
    end

    test "five" do
      assert Malixir.arabicToRoman(5) == "V"
    end

    test "six" do
      assert Malixir.arabicToRoman(6) == "VI"
    end

    test "seven" do
      assert Malixir.arabicToRoman(7) == "VII"
    end

    test "nine" do
      assert Malixir.arabicToRoman(9) == "IX"
    end

    test "ten" do
      assert Malixir.arabicToRoman(10) == "X"
    end

    test "eleven" do
      assert Malixir.arabicToRoman(11) == "XI"
    end

    test "fourteen" do
      assert Malixir.arabicToRoman(14) == "XIV"
    end

    test "seventeen" do
      assert Malixir.arabicToRoman(17) == "XVII"
    end

    test "twenty" do
      assert Malixir.arabicToRoman(20) == "XX"
    end

    test "twentyone" do
      assert Malixir.arabicToRoman(21) == "XXI"
    end

    test "twentyfour" do
      assert Malixir.arabicToRoman(24) == "XXIV"
    end

    test "twentysix" do
      assert Malixir.arabicToRoman(26) == "XXVI"
    end

    test "twentynine" do
      assert Malixir.arabicToRoman(29) == "XXIX"
    end

    test "thirty" do
      assert Malixir.arabicToRoman(30) == "XXX"
    end

    test "fourty" do
      assert Malixir.arabicToRoman(40) == "XL"
    end

    test "fourtynine" do
      assert Malixir.arabicToRoman(49) == "XLIX"
    end

    test "fifty" do
      assert Malixir.arabicToRoman(50) == "L"
    end

    test "fiftynine" do
      assert Malixir.arabicToRoman(59) == "LIX"
    end

    test "ninetynine" do
      assert Malixir.arabicToRoman(99) == "XCIX"
    end

    test "onehundred" do
      assert Malixir.arabicToRoman(100) == "C"
    end

    test "onehundredandone" do
      assert Malixir.arabicToRoman(101) == "CI"
    end

    test "onehoundredandfourtynine" do
      assert Malixir.arabicToRoman(149) == "CXLIX"
    end

    test "onehoundredandninetynine" do
      assert Malixir.arabicToRoman(199) == "CXCIX"
    end

    test "twohoundred" do
      assert Malixir.arabicToRoman(200) == "CC"
    end

    test "fourhundred" do
      assert Malixir.arabicToRoman(400) == "CD"
    end

    test "fourhundredandfourtyeight" do
      assert Malixir.arabicToRoman(448) == "CDXLVIII"
    end

    test "fivehundred" do
      assert Malixir.arabicToRoman(500) == "D"
    end

    test "sixhundred" do
      assert Malixir.arabicToRoman(600) == "DC"
    end

    test "ninehundred" do
      assert Malixir.arabicToRoman(900) == "CM"
    end

    test "ninehundredninetynine" do
      assert Malixir.arabicToRoman(999) == "CMXCIX"
    end

    test "thousand" do
      assert Malixir.arabicToRoman(1000) == "M"
    end

    test "threethousandninehundredninetynine" do
      assert Malixir.arabicToRoman(3999) == "MMMCMXCIX"
    end
  end

  describe "romanToArabic/1" do
    test "I" do
      assert Malixir.romanToArabic("I") == 1
    end

    test "II" do
      assert Malixir.romanToArabic("II") == 2
    end

    test "III" do
      assert Malixir.romanToArabic("III") == 3
    end

    test "IV" do
      assert Malixir.romanToArabic("IV") == 4
    end

    test "V" do
      assert Malixir.romanToArabic("VI") == 6
    end

    test "VI" do
      assert Malixir.romanToArabic("VI") == 6
    end

    test "IX" do
      assert Malixir.romanToArabic("IX") == 9
    end

    test "XI" do
      assert Malixir.romanToArabic("XI") == 11
    end

    test "XIV" do
      assert Malixir.romanToArabic("XIV") == 14
    end

    test "XVI" do
      assert Malixir.romanToArabic("XVI") == 16
    end

    test "XXI" do
      assert Malixir.romanToArabic("XXI") == 21
    end

    test "XL" do
      assert Malixir.romanToArabic("XL") == 40
    end

    test "LX" do
      assert Malixir.romanToArabic("LX") == 60
    end

    test "LXIX" do
      assert Malixir.romanToArabic("XLIX") == 49
    end

    test "XC" do
      assert Malixir.romanToArabic("XC") == 90
    end

    test "CX" do
      assert Malixir.romanToArabic("CXI") == 111
    end

    test "CCXC" do
      assert Malixir.romanToArabic("CCXC") == 290
    end

    test "CDXC" do
      assert Malixir.romanToArabic("CDXC") == 490
    end

    test "MLXVI" do
      assert Malixir.romanToArabic("MLXVI") == 1066
    end

    test "MCMLXXXIX" do
      assert Malixir.romanToArabic("MCMLXXXIX") == 1989
    end
  end
end
