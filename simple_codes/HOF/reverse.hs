-- myRevers [1.10] -> [10,9,8,7,6,5,4,3,2,1]
myReverse :: [Int] -> [Int]
myReverse [x] = [x]
myReverse (x:xs) = myReverse xs ++ [x] 


-- flip (/) 1 2  -> 2 /1 -> 2.0
-- flip (>) 3 5 -> True
-- foldl (/) 64 [4,2,4]  -> 2.0
-- 64 / 4 = 16
-- 16 / 2 = 8
-- 8 / 4 = 22.0
reverseHOF :: [Int] -> [Int]
-- reverseHOF x = foldl (filip (:)) [] x
reverseHOF = foldl (flip (:)) []

