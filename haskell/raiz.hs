roots :: Float -> Float -> Float -> [Float]
roots a b c
  | delta > 0 = [(-b + sqrt delta)/2*a, (-b - sqrt delta)/2*a]
  | delta == 0 = [(-b + sqrt delta)/2*a]
  | otherwise = []
  where delta = b^2 -4*a*c

-- calculaDelta :: Float -> Float -> Float -> Float
-- calculaDelta a b c
--   delta = b^2 -4*a*c