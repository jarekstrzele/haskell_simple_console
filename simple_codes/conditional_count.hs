countIf::(Int->Bool)->[Int]->Int -- returns the number of elmenets in the list that satisfy the predicate
--countIf (>5) [1..10] -> 5
--countIf even [3,4,6,1] ->2
--      filter (>3) [1,2,3,4,5,6,7,8]
---     output: [4,5,6,7,8]
countIf p x = length $ filter p x 



