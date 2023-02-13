nats :: [Integer]
-- it returns a infinite list of  natural numbers
-- iterate (*2) 1  --> [1,2,4,8,16,....]
-- ghci> :t iterate
-- iterate :: (a -> a) -> a -> [a]
nats = iterate (+1) 0

