module Main (main) where

-- import Lib

main :: IO ()
addBrackets :: [Char] -> [Char]
addBrackets s = "[" ++ s ++ "]"
result :: [[Char]]
result = map addBrackets [ "one", "two", "three"]

myIf :: Bool -> p -> p -> p
myIf True thenFunc elseFunc = thenFunc
myIf False thenFunc elseFunc = elseFunc

main = 
    let x = 5
    in print $ myIf (x==5) "is five" "is not five"
    


