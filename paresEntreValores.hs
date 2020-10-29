parEntre :: Int -> Int -> String
parEntre x y =
  if x == y then "cabou"
  else if mod x 2 == 0 then show(x) ++ " " ++ (parEntre (x+1) y)
  else parEntre (x+1) y