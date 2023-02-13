main :: IO()
main = putStrLn $ greet  "World!"
-- comment
greeting = "Hello"
greet who = greeting  ++ ", " ++ who
