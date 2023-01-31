module Lib
    ( grid
    , languages
    , formatGrid
    , outputGrid
    ) where

outputGrid :: [String] -> IO()
outputGrid someGrid = putStrLn (formatGrid someGrid)

formatGrid :: [String] -> String
formatGrid = unlines

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