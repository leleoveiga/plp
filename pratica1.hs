joana:: Int -> Int -> Int
joana x y = (3*x)^2 + y^2

jose:: Int -> Int -> Int
jose x y = 2*(x^2) + (5*y)^2

joaquina:: Int -> Int -> Int
joaquina x y = -100*x + y^3

main :: IO()
main = do
  xString <- getLine
  yString <- getLine
  let x = read xString
  let y = read yString
  if joana x y >= jose x y && joana x y >= joaquina x y then print("Joana Ganhou!")
  else if jose x y >= joana x y && jose x y >= joaquina x y then print("Jose Ganhou!")
  else print("Joaquina Ganhou!")