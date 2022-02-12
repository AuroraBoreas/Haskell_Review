import Data.List
import System.IO

-- generate a list
asc :: Int -> Int -> [Int]
asc m n
    | m > n  = []
    | m == n = [m]
    | m < n  = m : asc (m+1) n

-- general methods of list
a :: [Int]
a = asc 3 10

h = head a
t = tail a
l = length a
i = init a
n = null a

-- list of boolean: any all in python
b :: [Bool]
b = [True, False, True]
a' :: Bool
b' :: Bool
a' = and b
b' = or b

-- list comprehension
l' :: [(Int, String)]
l' = [(x,y) | x <- [1..3], y <- ["a","b","c"]]

-- tuple
addTuple :: [(Int, Int)] -> [Int]
addTuple xs = [x + y | (x,y) <- xs]
at' = addTuple [(1, 2), (2, 3), (100, 100)]

-- exercise 01
elem' :: (Eq a) => a -> [a] -> Bool
elem' a x
    | null x == True = False
    | a == head x    = True
    | otherwise      = elem' a (tail x)

elem'' _ [] = False
elem'' e (x:xs) = (e == x) || elem'' e (xs)

-- exercise 02
nub' :: (Eq a) => [a] -> [a]
nub' [] = []
nub' (x:xs)
    | x `elem''` xs = nub' xs
    | otherwise     = x : nub' xs

-- exercise 03
isAsc :: [Int] -> Bool
isAsc [] = True -- base
isAsc [x] = True -- hypothesis step
isAsc (x:xs)     -- verification
    | x > (head xs) = False
    | otherwise     = True && (isAsc xs)
