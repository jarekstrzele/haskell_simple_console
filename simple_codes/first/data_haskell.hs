data Compass = North | East | South | West
   deriving (Eq, Ord, Enum, Show)
   
   
data Expression = Number Int
   | Add Expression Expression
   | Subtract Expression Expression
   deriving (Eq, Ord, Show)
   
calc :: Expression -> Int
calc (Number x) = x
calc (Add x y) = (calc x) + (calc y)
calc (Subtract x y) = (calc x) - (calc y)

newHead :: [a] -> a
newHead [] = error "empty list"
newHead (x:_) = x

newTail :: [a] -> [a] 
newTail [] = error "empty list"
newTail (x:xs) = xs



