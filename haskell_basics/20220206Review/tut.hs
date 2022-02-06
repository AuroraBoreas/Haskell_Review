{-

Haskell Review

@ZL, 20220206

-}

import Data.List
import System.IO

{-

Variable

@Type Theory

Haskell using type inference, static type
Type: C S I S L, F D, B B D

-}

-- int
maxInt = maxBound :: Int
minInt = minBound :: Int

-- double
p = 3.1415926
e = 2.7182818

-- const
always5 :: Int
always5 = 5

-- sum
total = sum [1..100]

{-

Statement and expression

# Arithmetic: + - * / p l
# Relational: == != > >= < <=
# Logical   : nao
# Assignment: = Type()
# Bitwise   : << >> & | ^ ~
# Access    : . ->
# Cast      : dynamic_cast, static_cast, const_cast, reinterpret_cast
# Op4Storage: new delete
# Op4Other  : ? :
-}

-- R: RCIV
prefixMod = mod 5 4
infixMod = 5 `mod` 4

-- neg
neg' = 10 + (-1)

-- sqrt :: Math
a = 9
sr = sqrt (fromIntegral a)

fact n =
  if n < 2 then 1 else n * fact (n-1)

{-

List

Tuple

-}

-- concat
primeNumbers = [2, 3, 5]
morePrimes = primeNumbers ++ [7, 11, 13]

-- construct
favNums = 2 : 7 : 21 : 66 : []

-- nested
nested = [[3,5,7],[2,4,6]]
wrapped = 2 : morePrimes
len = length wrapped

reversed = reverse wrapped

isEmpty = null wrapped

second = wrapped !! 1

-- head, tail
first = head wrapped
lastt = last wrapped
-- pop
initt = init wrapped
-- slice
sliced = take 3 wrapped
-- remove
dropped = drop 3 wrapped
-- membership
ele = 10 `elem` wrapped
-- min, max
m1 = minimum wrapped
m2 = maximum wrapped
pr = product wrapped
-- generate, w/ step
evenList = [2, 4..20]
letters  = ['a', 'c'..'z']
-- infinite
infList = [10, 20..]
many2s = take 10 (repeat 2)
many3s = replicate 10 3
cycle4s = take 10 (cycle [1,2,3,4])
-- list expression(generator) w/ condition
list2s = [x * 2 | x <- [1..10]]
list3s = [x * 3 | x <- [1..10], x * 3 <= 20]
list9N13 = [x | x <- [1..500], x `mod` 13 == 0, x `mod` 9 == 0]

sorted = sort [9,1,8,3,4]
-- zipWith
zipped = zipWith (+) [1..5][6..10]
filtered = filter (>5) [1..10]
takWhile = takeWhile (<=20) [2, 4..]
mult = foldl (*) 1 [2..5]
nestedTbl = [[x * y | y <- [1..10]] | x <- [1..10]]

-- tuple ctr: similar in C++
zl = ("Zhang Liang", 88)
name = fst zl
age  = snd zl

-- zip
names = ["ZL", "SCY", "LY"]
addrs = ["123 Main", "234 North", "567 South"]

namesAddrs = zip names addrs
