firstWord :: String -> String -- it returns the first word in the string
-- firstWord "   Good moring I sar  " -> "Good"

--- dropWhile (<3) [1,2,3,4,5]
--- output: [3,4,5]
--- takeWhile (<3) [1,2,3,4,5]
--- output: [1,2]

firstWord = takeWhile (/=' ') . dropWhile (== ' ')
