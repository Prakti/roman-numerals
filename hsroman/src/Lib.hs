module Lib
  ( arabicToRoman
  ) where

arabicToRoman :: Integer -> [Char]
arabicToRoman arabic = arabicToRomanLoop arabic ""


arabicToRomanLoop :: Integer -> [Char] -> [Char]
arabicToRomanLoop arabic roman
  | arabic > 999 = arabicToRomanLoop (arabic - 1000) (roman ++ "M")
  | arabic > 899 = arabicToRomanLoop (arabic - 900) (roman ++ "CM")
  | arabic > 499 = arabicToRomanLoop (arabic - 500) (roman ++ "D")
  | arabic > 399 = arabicToRomanLoop (arabic - 400) (roman ++ "CD")
  | arabic > 99  = arabicToRomanLoop (arabic - 100) (roman ++ "C")
  | arabic > 89  = arabicToRomanLoop (arabic - 90)  (roman ++ "XC")
  | arabic > 49  = arabicToRomanLoop (arabic - 50)  (roman ++ "L")
  | arabic > 39  = arabicToRomanLoop (arabic - 40)  (roman ++ "XL")
  | arabic > 9   = arabicToRomanLoop (arabic - 10)  (roman ++ "X")
  | arabic > 8   = arabicToRomanLoop (arabic - 9)   (roman ++ "IX")
  | arabic > 4   = arabicToRomanLoop (arabic - 5)   (roman ++ "V")
  | arabic > 3   = arabicToRomanLoop (arabic - 4)   (roman ++ "IV")
  | otherwise = roman ++ [ 'I' | _ <- [1..arabic]]
