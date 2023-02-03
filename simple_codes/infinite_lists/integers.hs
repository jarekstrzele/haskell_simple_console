ints :: [Integer]
-- take 8 ints  ---> [0,1,-1,2,-2,3,-3,4]
ints = iterate integers 0
  where
    integers :: Integer -> Integer
    integers x
      | x > 0 = -x
      | otherwise = 1 - x



