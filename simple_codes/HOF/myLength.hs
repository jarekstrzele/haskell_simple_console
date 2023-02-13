myLength :: String -> Int 
--myLength "Tomas" -> 5
myLength [x] = 1
myLength (x:xs) = 1 + myLength xs 


--- 1. transform the strign into a list of 1's
---     ghci> map (const 1) "TOmas"
--      [1,1,1,1,1]
--- 2. sum all of them
myLength' :: String->Int
-- myLength' s = foldr (+) 0 . (map (const 1) s)
-- myLength' = foldr (+) 0 . map (const 1)
myLength' = foldr ((+) . const 1) 0 



