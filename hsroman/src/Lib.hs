module Lib
  ( arabicToRoman
  ) where

arabicToRoman :: Integer -> [Char]
arabicToRoman arabic
  | otherwise = [ 'I' | _ <- [1..arabic]]
