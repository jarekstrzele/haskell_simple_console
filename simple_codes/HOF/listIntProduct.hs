-- prod [2,10,5] -> 100
-- prod [3,1,2,4] -> 24

prod :: [Int] -> Int 
prod [x] = x 
prod (x:xs) = x * prod xs

-- FOLDL
-- type: (a->b->a)->a->[b]->a
--      input : foldl (/) 64 [4,2,4]
--      output : 2.0
-- 64 / 4 = 16
-- 16 / 2 = 8
-- 8  / 4 = 2

-- foldl (*) 1 [7,2,9] -- 1  neutral (initial) element ; in addition 0 is neutral element
-- 1* 7 = 7
-- 7 * 2 = 14
-- 14 * 9 = 126

prod1 :: [Int]->Int
-- prod1 x = foldl (*) 1 x 
prod1 = foldl (*) 1
------------------------------------------------------
-- prodEvens :: [Int]->Int
-- prodEvens x:xs 
--     | (x `mod` 2 == 0) = foldl (*) 1 x 
--     | otherwise  prodEvens xs 

-- filter even [2,1,4,6,7] -> [2,4,6]
-- f . g = f( g(x) )
prodEvens = prod1 . filter even  -- equvalate prodEvens l = prod1 (filter even l)


