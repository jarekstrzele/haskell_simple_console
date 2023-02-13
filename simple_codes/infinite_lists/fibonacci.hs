-- each number is the sim of the two preceding ones
-- take 6 fings -> 0,1,1,2,3,5
fibs :: [Integer]
fibs = fibo 0 1
  where
    fibo :: Integer -> Integer -> [Integer]
    fibo x y = x: (fibo y (x+y))