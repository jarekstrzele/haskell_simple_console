combined :: [Int] -> [Int -> Int] -> [[Int]] 
-- returns the list consisting of applying each of the functions
-- in the second list to the elements in the first list
-- combined [1,2,3] [(+1), (*2), (^2)]  -> [[2,3,4],[2,4,6], [1,4,9]]
combined list fs = [map f list | f <- fs]
