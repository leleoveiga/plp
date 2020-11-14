determinarCores :: String -> String
determinarCores cor
  | cor == "laranja" = "amarelo + vermelho"
  | cor == "roxo" = "vermelho + azul"
  | cor == "verde" = "azul + amarelo"
  | cor == "azul" = "azul"
  | cor == "amarelo" = "amarelo"
  | cor == "vermelho" = "vermelho"
  | otherwise = "Entrada inválida!"

corComposta :: String -> String -> String
corComposta cor1 cor2
  | cor1 == "amarelo" && cor2 == "vermelho" = "laranja"
  | cor1 == "amarelo" && cor2 == "azul" = "verde"
  | cor1 == "vermelho" && cor2 == "amarelo" = "laranja"
  | cor1 == "vermelho" && cor2 == "azul" = "roxo"
  | cor1 == "azul" && cor2 == "amarelo" = "verde"
  | cor1 == "azul" && cor2 == "vermelho" = "roxo"
  | otherwise = "Entrada inválida!"

main::IO()
main = do
  input1 <- getLine
  if(input1 == "1")
    then do
      cor <- getLine
      let saida = determinarCores cor
      putStrLn saida 
    else if(input1 == "2")
      then do
        cor1 <-getLine
        cor2 <-getLine
        let saida = corComposta cor1 cor2
        putStrLn saida
      else
        putStrLn "Entrada inválida!"
