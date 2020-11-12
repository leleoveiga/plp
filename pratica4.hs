procuraNota :: String -> [String] -> Int
procuraNota nota [] = 0
procuraNota nota (notaLista:listaNotas)
    |nota == notaLista = 1
    |otherwise = 1 + procuraNota nota listaNotas

novaNota :: String -> Float -> [String] -> String
novaNota nota tons notas = (notas!!indice)
    where
        indice = ((round (tons*2) + aux) `mod` 12) - 1
        aux = (procuraNota nota notas)

main :: IO()
main = do 
    nota <- getLine
    maisTom <- getLine
    let saida = novaNota nota (read maisTom) ["C","C#","D","D#","E", "F", "F#","G","G#","A", "A#","B"]
    print saida