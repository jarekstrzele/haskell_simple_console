consecutive :: [Int]->[Int->Int]->[[Int]]
-- returns the list of lists where each list if the result of applying, 
-- one after the other, the function in the second list to each element in the first list
-- consecutive [1,2,3] [(+1),(*2),(^2)] -> [[2,2,1], [3,4,4], [4,6,9]]
-- [1+1, 1*2, 1^2] -> [2,2,1]
-- [2+1, 2*2, 2^2] -> [3,4,4]
consecutive list func_list = [[func elem | func <- func_list] | elem <- list]


