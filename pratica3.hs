contaTokens :: String -> Int
contaTokens "" = 0
contaTokens (char:frase)
  | char == ' ' = (contaTokens frase) + 1
  | (length frase) == 0 = 1
  | otherwise = contaTokens frase

main :: IO()
main = do
    input <- getLine
    print(contaTokens input)