module Lib
    ( grid
    , languages
    , formatGrid
    , outputGrid
    , findWord
    , findWords
    , findWordInLine
    ) where
import Data.List (isInfixOf)
import Data.Maybe (catMaybes)

type Grid = [String]

outputGrid :: Grid -> IO()
outputGrid someGrid = putStrLn (formatGrid someGrid)

formatGrid :: Grid -> String
formatGrid = unlines

findWord :: Grid -> String -> Maybe String
findWord grid_ word = 
  let lines_ = grid_ ++ (map reverse grid_)
      found = or $ map (findWordInLine word) lines_
  in if found then Just word else Nothing

--findWords :: Grid -> [String] -> [String]
findWords grid words = 
  let foundWords = map (findWord grid) words
  in catMaybes foundWords

findWordInLine :: String -> String -> Bool
-- findWordInLine word line = word `isInfixOf` line
findWordInLine = isInfixOf

grid :: [String]
grid = [ "__C________R___"
        ,"__SI________U__"
        ,"__HASKELL____B_"
        ,"__A__A_____S__Y"
        ,"__PHP____H_____"
        ,"____S_LREP_____"
        ,"____I__M_Y__L__"
        ,"____L_E__T_O___"
        ,"_________HB____"
        ,"_________O_____"
        ,"________CN_____"
       ]

languages :: [String]
languages = 
  [ "BASIC"
  , "COBOL"
  , "CSHARP"
  , "HASKELL"
  , "LISP"
  , "PERL"
  , "PHP"
  , "PYTHON"
  , "RUBY"
  , "SCHEME"
  ]