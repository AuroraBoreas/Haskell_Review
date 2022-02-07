import Data.List
import System.IO

main = do
    putStrLn "What's your name"
    name <- getLine
    putStrLn ("hello " ++ name)

-- regular
add x y = x + y

addTuple (x1, y1) (x2, y2) = (x1 + x2, y1 + y2)
distance (x1, y1) (x2, y2) =
    sqrt ((x1 - x2)^2 + (y1 - y2)^2)

-- condi
whatAge 16 = "you can drive "
whatAge 18 = "you can vote"
whatAge 21 = "you're an adult"
whatAge _ = "nothing important"

-- recursive
gcd' a b =
    if b == 0 then a
    else gcd' b (a `rem` b)

fact 2 = 2               -- base
fact n =  n * fact (n-1) -- higher

prod n = product [1..n]

-- guard
isEven n
    | n `mod` 2 == 0 = True
    | otherwise = False

batAvgRating hits atBats
    | avg <= 0.200 = "Terrible Battting Aerage"
    | avg <= 0.250 = "Average Player"
    | avg <= 0.280 = "Your doing pretty good"
    | otherwise = "You're superstar"
    where avg = hits / atBats

getListItems [] = "your list is empty"
getListItems (x:[]) = "your list starts with " ++ show x
getListItems (x:y:[]) = "your list contains " ++ show x ++ " and " ++ show y
getListItems (x:xs) = "the 1st item is " ++ show x ++ " and the rest are " ++ show xs

getFirstItem [] = "Empty String"
getFirstItem all@(x:xs) = "the first letter in " ++ all ++ " is " ++ [x]

-- Equality; x:xs -> "chop off" concept
times4 :: Int -> Int
times4 x = x * 4
listTimes4 = map times4 [1,2,3,4,5]

multBy4 :: [Int] -> [Int]
multBy4 [] = []
multBy4 (x:xs) = times4 x : multBy4 xs

areStringsEq :: [Char] -> [Char] -> Bool
areStringsEq [] [] = True
areStringsEq (x:xs) (y:ys) = x == y && areStringsEq xs ys
areStringsEq _ _ = False

-- HOF
times2 :: Int -> Int
times2 x = x * 2

doMult :: (Int -> Int) -> Int -> Int
doMult func x = func x

-- Function as an object; Curry
getAddFunc :: Int -> (Int -> Int)
getAddFunc x y = x + y
add3 = getAddFunc 3
plus4 = add3 4
threePlusList = map add3 [1,2,3,4,5]

-- lambda λ
db1To10 = map (\x -> x * 2) [1..10]

-- operator neq is /=
neq :: Bool
neq = 5 /= 5

-- control flow: if...then...else
doubleEvenNum y =
    if (y `mod` 2 /= 0)
        then y
        else y * 2

-- control flow: case...of
getClass n = case n of
    5 -> "goto Kindergarten"
    6 -> "goto Elementary school"
    _ -> "Go away"

