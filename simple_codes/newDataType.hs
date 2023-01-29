data Colour = Red | Green | Blue deriving Show 

data Kolor = RGB Int Int Int deriving Show


data Color = NewRGB
    {   red :: Int,
        green :: Int,
        blue :: Int
    } deriving Show

data ColorAlt = RGB' Int Int Int | CMYK Float Float Float Float deriving Show 


