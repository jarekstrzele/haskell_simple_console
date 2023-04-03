import Data.List 

numUniques :: (Eq a) => [a] -> Int 
numUniques = length . nub 

-- nub is defined in Data.List module
-- nub takes a list and weeds out duplicate elements (weed out - usuwać)
-- composing length and nub produces a function that's the equivalent of
    -- \xs -> length (nub xs)