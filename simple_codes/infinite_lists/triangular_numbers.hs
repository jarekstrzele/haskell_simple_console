triangulars::[Integer]
-- take 8 triangulars [0,1,3,6,10,15,21,28]
-- * T1=1

-- T3 = 6
--   *
--  **
-- *** 
-- Tn = sum_k=1_n  k = 1+2+3+4+...+ n =  n(n+1)/2
-- T3 = 3(3+1)/2 = 3*4/2 = 12/2 =6
-- iterate (*2) 1 -> [1,2,4,8,16,...]

-- scanl operation initial_element list
-- scanl (/) 64 [4,2,4]
-- [64.0, 16.0, 8.0, 2.0]
-- 64/4 =  16
-- 16/2 =  8
-- 8/ 4 =  2

triangulars = scanl (+) 0 $ iterate (+1) 1

