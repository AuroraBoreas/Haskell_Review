import Data.List
import System.IO

-- hof
sqrt' :: Double -> Double
sqrt' a = a ** 0.5

fact :: (a -> b) -> a -> b
fact f x = f x

rv :: Double
rv = fact sqrt' 4

-- lambda (\<args> -> <expr>)
rv2 :: Integer
rv2 = (\x -> x + 1) 4
rv3 :: Integer
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
rv4 :: Int
rv4 = (add 1) 2

-- composite, calculus derivative: chain rule
-- f • g = f(g(x))
-- (.) :: (b -> c) -> (a -> b) -> a -> c
a :: [Int]
a = 6 : 4 : 1 : 2 : 9 : []
descSort :: [Int] -> [Int]
descSort = reverse . sort
rv5 :: [Int]
rv5 = descSort a

-- folding is a rather important concept
-- foldr (a -> b -> b) b (t a)
arr3 :: [Int]
arr3 = [1,2,3]
rv6 :: Int
rv6 = foldr (+) 0 arr3
rv7 :: Int
rv7 = foldr (*) 1 arr3

count' :: (Foldable t, Eq a1, Num a2) => a1 -> t a1 -> a2
count' e =
    foldr (\x acc -> if e==x then acc+1 else acc) 0

isAll :: (Foldable t, Eq a) => a -> t a -> Bool
isAll f =
    foldr (\x -> (&&) $ f==x) True

isAll' :: (Foldable t, Eq a) => a -> t a -> Bool
isAll' g =
    foldr (\x acc -> g == x && acc) True

-- ignore args in lambda
length' = foldr (\x -> (+) 1) 0 [1,2,3]
length_ = foldr (const $ (+) 1) 0 [1,2,3]

-- map
-- map f = foldr ((:) . f) []

-- direction foldr, foldl
-- foldr (a -> b -> b) b (t a)
-- foldl (b -> a -> b) b (t a)
