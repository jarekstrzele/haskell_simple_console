import GHC.Int (neInt32)
import System.Win32 (COORD(yPos))
generateListAsc :: Int->Int->[Int]
generateListAsc n m 
  | m < n = []
  | m == n =[m]
  | m > n = n : generateListAsc (n+1) m 


-- ghci> generateListAsc 10 3
-- []
-- ghci> generateListAsc 3 10
-- [3,4,5,6,7,8,9,10]
-- ghci> generateListAsc 3 3 
-- [3]

addTuples :: [(Int, Int)] -> [Int]
addTuples xs = [x+y | (x,y) <- xs]

--- Create a fun `elem` that returns True if element is in a given list and returns False otherwise
elem' :: (Eq a) => a -> [a] -> Bool 
elem' _ [] = False 
elem' x (y:ys)
  | x == y = True 
  | otherwise = elem' x ys

elem2 :: (Eq a) => a -> [a] -> Bool 
elem2 _ [] = False 
elem2 e (x:xs) = (e == x)  || (elem e xs)


--- create a fun `nub` that removes all duplicates from a given list
nub :: (Eq a) => [a] -> [a]
nub [x] = [x]
nub (x:xs)   
    | elem2 x xs = nub xs 
    | otherwise = x : nub xs

-- create a fun isAsc that returns True if the list given to it
-- is a list of ascending order
isAsc :: [Int] -> Bool
isAsc [] = True 
isAsc [x] = True 
isAsc (x:y:xs) =
    (x <= y) && isAsc (y:xs )

-- create a func hasPath that determines
-- if a path from one node to another exists within a directed graph
hasPath :: [(Int, Int)] -> Int -> Int ->Bool 
hasPath [] x y = x == y
hasPath xs x y
  | x == y = True 
  | otherwise =
    let xs' = [(n,m) | (n,m) <- xs, n/= x] in 
      or [hasPath xs' m y | (n,m) <- xs, n == x]

    



checkNode :: (Int, Int) -> Int -> Int -> Bool
checkNode (x, y) n1 n2 = (x == n1) && (y == n2)





