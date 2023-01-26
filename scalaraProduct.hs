scalarProduct :: [Float]->[Float]->Float -- returns the dot product of two lists of float numbers with the same size
--- scalarProduct [2.0, 1.0, 0.5] [3.0,2.0,2.0] -> 18
scalarProduct [x] [y] = x * y
scalarProduct (x:xs) (y:ys) = x*y + scalarProduct xs ys

-- using higer order functions
--- zipWith (+) [1,2,3] [3,2,1]
-- output: [4,4,4]
scalarProduct' x y = sum $ zipWith (*) x y


