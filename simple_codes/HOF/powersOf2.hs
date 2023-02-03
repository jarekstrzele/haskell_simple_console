powersOf2 :: [Int] -- infinit power, so use `take Number powersOf2`
-- take 5 powersOf2 -> [1,2,3,8,16]
-- take 2 powersOf2 -> [1,2,4]
-- powersOf2 =  [x^2 | x <- [1..]]

powersOf2 = iterate (*2) 1
