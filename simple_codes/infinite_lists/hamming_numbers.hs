hammings :: [Integer]
-- take 8 hammings  --> [1,2,3,4,5,6,8,9]
-- The Hamming numbers are those that only have 2,3, and 5 as prime divisors
-- 2^i * 3^j * 5^k
-- 1 = 2^0 * 3^0 * 5^0
-- 4 = 2^2 * 3^0 * 5^0
-- 6 = 2^1 * 3^1 * 5^0
hammings = 1: (merge (map(*2) hammings) $ merge (map(*3) hammings) (map (*5) hammings))
  where
    merge :: [Integer] -> [Integer] -> [Integer]
    merge (x:xs) (y:ys)
      | x < y = x : merge xs (y:ys)
      | x == y = x : merge xs ys 
      |otherwise = y : merge (x:xs) ys -- y < x





