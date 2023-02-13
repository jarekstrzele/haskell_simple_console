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

reverse' :: [a] -> [a]
reverse' [] = []
reverse' (x:xs) = reverse' xs ++ [x] 

zip' :: [a] -> [b] -> [(a,b)]
zip' _ [] = []
zip' [] _ = []
zip' (x:xs) (y:ys) = (x,y): zip' xs ys 


elem' :: (Eq a) => a -> [a] -> Bool
elem' a [] = False
elem' a (x:xs)
  | a ==x = True
  | otherwise = elem' a xs 

quicksort :: (Ord a) => [a] -> [a]
quicksort [] = [] -- edge condition a sorted empty list is an empty list
quicksort (x:xs) = 
  let smallerSorted = quicksort [a | a <- xs, a <=x]
      biggerSorted = quicksort [a | a <- xs, a > x]
  in smallerSorted ++ [x] ++ biggerSorted




