defmodule Malixir do
  @moduledoc """
  Converts arabic numbers to roman numbers and back
  """

  @doc """
  Converts from arabic numbers to roman numbers
  """
  def arabicToRoman(arabicNum, romanNum \\ "") do
    cond do
      arabicNum > 999 -> arabicToRoman(arabicNum - 1000, romanNum <> "M")
      arabicNum > 899 -> arabicToRoman(arabicNum - 900, romanNum <> "CM")
      arabicNum > 499 -> arabicToRoman(arabicNum - 500, romanNum <> "D")
      arabicNum > 399 -> arabicToRoman(arabicNum - 400, romanNum <> "CD")
      arabicNum > 99 -> arabicToRoman(arabicNum - 100, romanNum <> "C")
      arabicNum > 89 -> arabicToRoman(arabicNum - 90, romanNum <> "XC")
      arabicNum > 49 -> arabicToRoman(arabicNum - 50, romanNum <> "L")
      arabicNum > 39 -> arabicToRoman(arabicNum - 40, romanNum <> "XL")
      arabicNum > 9 -> arabicToRoman(arabicNum - 10, romanNum <> "X")
      arabicNum > 8 -> arabicToRoman(arabicNum - 9, romanNum <> "IX")
      arabicNum > 4 -> arabicToRoman(arabicNum - 5, romanNum <> "V")
      arabicNum > 3 -> arabicToRoman(arabicNum - 4, romanNum <> "IV")
      arabicNum > 0 -> arabicToRoman(arabicNum - 1, romanNum <> "I")
      arabicNum == 0 -> romanNum
    end
  end

end
