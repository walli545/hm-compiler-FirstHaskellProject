-- | A Lib module
module Lib
    ( someFunc
    , square
    , ggT
    ) where

someFunc :: IO ()
someFunc = putStrLn "someFunc"

-- | Calculate the square of a number
square
    :: Num a => a -- ^ the number
    -> a  -- ^ the square
square n = n^2

-- | Calculate the greatest common divisor of two numbers
ggT
    :: Integer -- ^ the first number
    -> Integer -- ^ the second number
    -> Integer -- ^ the gcd
ggT a b = abs (if a == 0 then b else ggT (b `mod` a) a)