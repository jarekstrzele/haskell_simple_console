factorials :: [Integer]
-- 0!-1, 1!-1, 2!-2,3!-6,4!-24, 5!-120
-- take 4 factorials  -> [1,1,2,6]
factorials = scanl (*) 1 $ iterate (+1) 1






