main :: IO ()
main = do 
    content <- readFile "./nums.txt"
    putStrLn content