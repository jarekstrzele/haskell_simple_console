lastButOne :: [a] -> a
lastButOne [x, _] = x 
lastButOne (_ : xs) = lastButOne xs
lastButOne _ = error "Not enough elements in the list"


