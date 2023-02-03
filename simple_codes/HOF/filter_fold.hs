filterFoldl :: (Int->Bool) ->(Int->Int->Int) -> Int -> [Int] -> Int
-- that returns a fold of all the elements that satisfy the given predicate
--- filterFoldl even (*) 1 [4,7,2,4,9,3] --> 32
-- foldl :: (a->b->a)->a->[b]->a
--  input: foldl (/) 64 [4,2,4]
--  output: 2.0
-- 64 / 4 = 16
-- 16 / 2 = 8
-- 8  / 4 = 2
filterFoldl condition func init_elem list = foldl func init_elem $ filter condition list


