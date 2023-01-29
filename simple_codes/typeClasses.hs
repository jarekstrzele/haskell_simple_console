data SomeThingNew = Sth 
  {
    s1 :: Double,
    s2 :: Int,
    s3 :: String
  } deriving Show 

-- instead of that code use deriving Show
-- instance Show SomeThingNew where 
--     show s = "{" ++
--         show (s1 s) ++ " -- " ++ show (s2 s) ++ " noo" ++
--         show (s3 s) ++
--         "}"

-- main :: IO()
-- main = print $ Sth 1 20 "Somthing Nowe"


data NewNum = NN 
    {
        n1 :: Double,
        n2 :: Double,
        n3 :: Double,
        n4 :: Double 
    } deriving Show 

instance Num NewNum where 
    q0 + q1 = NN (n1 q0 + n1 q1) (n2 q0 + n2 q1) (n3 q0 + n3 q1) (n4 q0 + n4 q1)
    q0 * q1 = undefined
    abs = undefined
    signum = undefined
    fromInteger = undefined
    negate = undefined

main :: IO()
main = print $ NN 1 20 30 40 + NN 4 2 1 0


