import Data.List
import System.IO

-- ctr a datatype
-- data Name = ctr1  <args> | ctr2 <args> | ...

-- field
data Color =
    Red | Orange | Yellow | Green | Blue | Magenta

c :: Color
c = Red


-- method
data Calculation =
    Add Int Int | Sub Int Int | Mul Int Int | Div Int Int

calc :: Calculation -> Int
calc (Add x y) = x + y
calc (Sub x y) = x - y
calc (Mul x y) = x * y
calc (Div x y) = div x y

-- recursive
data PeaNum =
    Succ PeaNum | Zero

four :: PeaNum
four = Succ $ Succ $ Succ $ Zero

incr :: PeaNum -> PeaNum
incr = Succ

decr :: PeaNum -> PeaNum
decr (Succ n) = n

add :: PeaNum -> PeaNum -> PeaNum
add Zero n     = n
add (Succ m) n = Succ $ add m n

sum_ :: [PeaNum] -> PeaNum
sum_ []     = Zero
sum_ (x:xs) = add x $ sum_ xs

data Tree a = Leaf | Node (Tree a) a (Tree a)
tree :: Tree Int
tree =
    Node (Node Leaf 1 Leaf) 2 (Node (Node Leaf 3 Leaf) 4 Leaf)
