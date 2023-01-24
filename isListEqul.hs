eql :: [Int] -> [Int] -> Bool

-- 1. the same length?
-- 2. the same  element the same order
eql xs ys 
  | length xs /= length ys = False
  | otherwise = and $ zipWith (==) xs ys
-- zipWith (==) [1,2,3] [1,2,4] -> [True, True, False]
-- and $ zipWith (==) [1,2,3] [1,2,4] -> and [True, True, False] -> True and True and False -> False
-- zipWith (+) [1,2,3] [1,2,4] -> [1+1,2+2, 3+4]



