maximum' :: (Ord a) => [a] -> a 
-- max of singleton list is equal to the only element in it <-- AN EDGE CONDITION
-- max of a longer list is the head if the head is bigger than the max of the tail
-- if the max of the tailis bigger, thenit's the max
maximum' [] = error "maximum of empty list"
maximum' [x] = x 
maximum' (x:xs) 
  | x> maxTail = x 
  | otherwise = maxTail
  where maxTail = maximum' xs 

-- clearer way
max' :: (Ord a) => [a] -> a 
max' [] = error "max of empty list"
max' [x] = x 
max' (x:xs) = max x (max' xs)

replicate' :: (Num i, Ord i)=> i -> a -> [a]
replicate' n x 
  | n <=0 = []
  | otherwise = x: replicate' (n-1) x 

take' :: (Num i, Ord i) => i -> [a] -> [a]
take' n _ 
  | n <=0 = []
take' n (x:xs) =  x:take' (n-1) xs 

