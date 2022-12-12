module NewFunctions where
import Tokenizer (isNumeralChar)

invalid_names = ["(", ")", "+", "-", "*", "~", "lambda", "call", "if", "let", "letrec", "cons", "head", "tail"]
validID :: String -> Bool
validID "" = False
validID (x:xs)
  | (x:xs) `elem` invalid_names = False
  | isNumeralChar x = False
  | otherwise = True