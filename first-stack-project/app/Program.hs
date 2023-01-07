main :: IO ()
main = do 
    content <- readFile "./nums.txt"
    print content