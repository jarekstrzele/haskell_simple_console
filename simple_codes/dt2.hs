data Compass = North | East | South | West


instance Show Compass where
  show North = "North"
  show East = "East"
  show South = "South"
  show West = "West"


data Expression = Number Int
   | Add Expression Expression
   | Subtract Expression Expression
   deriving (Eq, Ord, Show)

