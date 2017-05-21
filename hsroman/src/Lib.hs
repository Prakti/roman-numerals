module Lib
  ( arabicToRoman
  , romanToArabic
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


romanToArabic :: [Char] -> Integer
romanToArabic roman = romanToArabicLoop roman 'M' 0

romanToArabicLoop :: [Char] -> Char -> Integer -> Integer
romanToArabicLoop [] _ arabic = arabic
romanToArabicLoop ('I':rest) _ arabic = romanToArabicLoop rest 'I' (arabic + 1)
romanToArabicLoop ('V':rest) lastDigit arabic
  | lastDigit == 'I' = romanToArabicLoop rest 'V' (arabic + 3)
  | otherwise        =  romanToArabicLoop rest 'V' (arabic + 5)
romanToArabicLoop ('X':rest) lastDigit arabic
  | lastDigit == 'I' = romanToArabicLoop rest 'X' (arabic + 8)
  | otherwise        = romanToArabicLoop rest 'X' (arabic + 10)
romanToArabicLoop ('L':rest) lastDigit arabic
  | lastDigit == 'X' = romanToArabicLoop rest 'L' (arabic + 30)
  | otherwise        = romanToArabicLoop rest 'L' (arabic + 50)
romanToArabicLoop ('C':rest) lastDigit arabic
  | lastDigit == 'X' = romanToArabicLoop rest 'C' (arabic + 80)
  | otherwise        = romanToArabicLoop rest 'C' (arabic + 100)
romanToArabicLoop ('D':rest) lastDigit arabic
  | lastDigit == 'C' = romanToArabicLoop rest 'D' (arabic + 300)
  | otherwise        = romanToArabicLoop rest 'D' (arabic + 500)
romanToArabicLoop ('M':rest) lastDigit arabic
  | lastDigit == 'C' = romanToArabicLoop rest 'M' (arabic + 800)
  | otherwise        = romanToArabicLoop rest 'M' (arabic + 1000)
romanToArabicLoop _ _ _ = error "Could not match roman digit"
