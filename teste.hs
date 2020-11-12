

import Util
iteraLista :: Int -> [Int] -> Maybe Int
iteraLista procurado [] = Nothing
iteraLista procurado (i:is) = if i == procurado then Just  procurado
    else iteraLista procurado is



main :: IO()
main = do
    let inteiros = [3,5,7,9]
    let resultado = iteraLista 9 inteiros
    if resultado == Nothing then print "nada"
    else do print (removeJustValor resultado)