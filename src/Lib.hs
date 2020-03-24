-- | A Lib module
module Lib
    ( someFunc
    , square
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- | Calculate the square of a number
square
    :: Num a => a -- ^ the number
    -> a  -- ^ the square
square n = n^2