flatten::[[Int]]->[Int]
-- flatten [[1,2,3],[4,5],[6],[],[3,3]] -> [1,2,3,4,5,6,3,3]
-- flatten xs = concat xs
flatten = concat 

-----
-- -- foldr (+) 5 [1,2,3,4]
-- 5 + 4 =9
-- 9 + 3 = 12
-- 12 + 2 = 14
-- 14 + 1 = 15
-- ghci> [1,2,3]++[22,22]
-- [1,2,3,22,22]
flatten' x = foldr (++) [] x -- explicite 
-- implicit flatten' = foldr (++) []





