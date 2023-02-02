--returns the list that less how many times x appiears in each sublist
-- countIn [[3,2,3],[3], [], [2,2]] 3 -> [2,1,0,0]
countIn :: [[Int]] -> Int -> [Int]
countIn list value = map count list
  where 
    count :: [Int] -> Int 
    count = length . filter (==value)
-- countIn [[5,2,1], [3], [5], [1,5,5]] 5
-- map count [[5,2,1], [3], [5], [1,5,5]]
----- count [5,2,1] -> length . filter (==5) [5,2,1] -
-----  length [5] -> 1
-- ...


