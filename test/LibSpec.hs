{-# LANGUAGE ScopedTypeVariables #-}
module LibSpec (spec) where

import Lib     (square, ggT)
import Test.Hspec
import Test.QuickCheck

spec :: Spec
spec = do
    describe "square" $ do
        it "calculates the square of 5.3" $
            square 5.3 `shouldBe` 28.09
        it "calculates the square of an arbitrary integer" $
            property $ \(n :: Integer) -> square n == n * n
        it "calculates the square of an arbitrary double" $
            property $ \(n :: Double) -> square n == n * n
    describe "ggT" $ do
        it  "calculates the ggT of 12 and 4" $
            ggT 12 4 `shouldBe` 4
        it  "calculates the ggT of 10 and 9" $
            ggT 10 9 `shouldBe` 1
        it "calculates the same as Haskell gcd" $
            property $ \a b -> ggT a b == gcd a b