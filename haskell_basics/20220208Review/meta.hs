import Data.List
import System.IO

module MyLib
    (
        fib,
        times2
    ) where

{-

Haskell

pure functional programming lang

no or less side effect

# Feature
## static
## type inference
## Recursive Curry Infix Vectorize

-}

-- # variable
x = 1.618 -- variable

e :: Int -- type ctr: const
e = 2.7182818

-- string
name = "Zhang Liang"
print ("hello " ++ name)

-- # function
-- where-bounding
inBtwn min max x = ilb && iub
    where
        ilb = x < min
        iub = x > max

-- let-bounding
inBtwn min max x = 
    let
        ilb = x < min
        iub = x > max
    in
        ilb && iub

-- recursive
fib = 1 : 1 [a + b | (a, b) <- zip fib $ tail fib] -- parenthesis () can be replaced by $

sum [] = 0 -- base
sum (x:xs) = x + sum xs

-- or fancy folding
sum = foldr (+) 0

-- return function

-- # statement and expression: DRY vs DAMP
-- a r l a b a c o o

-- # control flow
-- if...else...
-- guard...else...
inBtwn min max x = 
    if ilb && iub then True else False
    where
        ilb = x < min
        iub = x > max

-- # loop : n.a.
-- using recursion instead

-- # type : need grasp the core concept
-- enum
data BaseballPlayer = Pitcher | Catcher | Infielder | OutFielder deriving Show

barryBond :: BaseballPlayer -> Bool
barryBond OutFielder = True
barryBond _ = False

-- struct
data Customer = Customer String String Double deriving Show

zl :: Customer
zl = Customer "Zhang Liang" "123 Main" 3.1415926

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b

-- class
data Employee = Employee {
    name :: String,
    position :: String,
    idNum :: Int
} deriving (Eq, Show)

lz :: Employee
lz = Employee {
    name = "zhang liang",
    position = "SVP",
    idNum = 123
}

cy :: Employee
cy = Employee {
    name = "scy",
    position = "Engieer",
    idNum = 110
}

isEq = lz == cy
zlData = show lz

-- # data structure
-- ctr: regular, combine, concat, range w/ step,
arr1 = [1,2,3]
arr2 = 1 : 2 : []
arr3 = arr1 : arr2
arr4 = [1..10]
arr5 = [1,3,4..10]
-- list expression
arr6 = [x * 2 | x <- [1..10]]
arr7 = [x ^ 2 | x <- [1..10] | x `mod` 2 == 0]
-- map, filter, takeWhile, take
times2 :: Int -> Int
times2 x = x * 2
arr8 = map (times2) [1..5]
arr9 = take 3 arr8
arr10 = takeWhile (<5) arr8

-- # io
-- simple io
interact = do
    putStrLn "what's your name?"
    name <- getLine
    putStrLn "hello " ++ name

-- file io
writeToFile =
    file01 <- openFile "test.txt" WriteMode
    hPutStrLn file01 ("random line of string")
    hClose file01

readFromFile =
    file02 <- openFile "test.txt" ReadMode
    contents = hGetContents file02
    putStrLn contents
    hClose file02
