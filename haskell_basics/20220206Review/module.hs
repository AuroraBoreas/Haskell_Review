import Data.List
import System.IO

module SampleFunctions
    (isEven, doubleEvenNumber
    ) where

isEven :: Int -> Bool
isEven x = x `mod` 2 == 0

doubleEvenNumber :: Int -> Int
doubleEvenNumber x =
    if x `mod` 2 /= 0
        then x
        else x * 2
