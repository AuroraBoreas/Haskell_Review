import Data.List
import System.IO

-- hof
sqrt' :: Double -> Double
sqrt' a = a ** 0.5

fact :: (a -> b) -> a -> b
fact f x = f x

rv = fact sqrt' 4

-- lambda (\<args> -> <expr>)
rv2 = (\x -> x + 1) 4
rv3 = (\x y z -> x + y + z) 1 2 3

-- map
arr1 :: [Double]
arr1 = map (\x -> x ** 2) [1, 2, 3]

-- filter
arr2 :: [Int]
arr2 = filter (\x -> x `mod` 2 == 0) [1, 2, 3]

-- curry
add :: Int -> Int -> Int
add = (\x -> (\y -> x + y))
rv4 = (add 1) 2

-- composite, calculus derivative: chain rule
-- f • g = f(g(x))
-- (.) :: (b -> c) -> (a -> b) -> a -> c
a :: [Int]
a = 6 : 4 : 1 : 2 : 9 : []
descSort = reverse . sort
rv5 = descSort a
