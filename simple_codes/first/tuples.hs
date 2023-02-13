first :: (a,b,c) -> a
first (x, _, _) = x

timeDecomposition :: Int -> (Int, Int, Int)
timeDecomposition seconds = (h, m, s)
  where 
    h = div seconds 3600
    m = div (mod seconds 3600) 60
    s = mod seconds 60

distance p1 p2 = sqrt(sqr dx + sqr dy)
  where
    (x1, y1) = p1
    (x2, y2) = p2
    dx = x1-x2
    dy = y1-y2
    sqr x = x * x
