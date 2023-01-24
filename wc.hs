main = interact wordCount
    where wordCount input = show (words (lines input)) ++ "\n"
