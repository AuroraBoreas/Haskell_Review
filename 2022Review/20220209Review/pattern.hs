import Data.List
import System.IO

-- recursive

fac n =
    if n < 2
        then 1
        else n * fac (n-1)

-- guard
fact n
    | n <= 1    = 1
    | otherwise = n * fact (n-1)

-- pattern matching
is_zero 0 = True
is_zero _ = False

-- accumulator or tail recursion
factTail n = aux n 1
    where
        aux n acc
            | n < 2     = acc
            | otherwise = aux (n-1) (n*acc)
