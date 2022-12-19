module NewFunctions where
import Tokenizer (isSymbol)

invalid_names = ["(", ")", "+", "-", "*", "~", "lambda", "call", "if", "let", "letrec", "cons", "head", "tail", "quote"]
numerals = "0123456789"
validID :: String -> Bool
validID "" = False
validID (x:xs)
  | (x:xs) `elem` invalid_names = False -- palavras reservadas da linguagem
  | x `elem` numerals = False -- iniciados por números
  | isSymbol (x:xs) = True
  | otherwise = False
