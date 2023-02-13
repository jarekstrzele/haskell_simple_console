primes :: [Integer]
--- take 6 primes [2,3,5,7,11,13]
-- [1,2,3,4,5,6,7,8,9,...]
-- filte the prime ones
--- iterate f x   ----> [x, f(x), f(f(x)), (f(f(f(x)))]

primes = filter isPrime $ iterate (+1) 1
 where
  isPrime :: Integer -> Bool
  isPrime 1 = False
  isPrime 2 = True 
  isPrime n 
    | even n = False
    | otherwise = isPrimeAux 3
      where
        isPrimeAux :: Integer -> Bool 
        isPrimeAux x 
          | x >= div n 2 = True 
          | mod n x == 0 = False
          | otherwise = isPrimeAux (x+2)
-- for each odd number
-- we chack if n is divisible by [2,5,7,9, 11 ,...]


