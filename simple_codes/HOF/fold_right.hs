-- map' :: (a->b) -> [a] -> [b]
-- map' f  = foldr (\x acc -> f x : acc) [] 

oddSquareSum :: Integer  
oddSquareSum = sum (takeWhile (<10000) (filter odd (map (^2) [1..]))) 