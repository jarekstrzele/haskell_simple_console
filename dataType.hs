data RGB = Red | Blue | Green deriving (Eq, Ord, Show, Enum)

data Person = Person { name :: String, age :: Maybe Int, fav_col :: RGB, address :: [String] }
joe = Person "Joe" (Just 25) Red ["Durham Cathedral", "Durham"]

main = do 
 putStrLn "Cześć" 



