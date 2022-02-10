
-- recursive
fac n =
    if n < 2
        then 1
    else
        n * fac (n-1)

-- guard
fact n
    | n < 2     = 1
    | otherwise = n * fact (n-1)

-- accumulator -> tail recursion -> avoid stackoverflow
facto n = aux n 1
    where
        aux n acc
            | n < 2     = acc
            | otherwise = aux (n-1) (n*acc)

-- pattern match
is_zero 0 = True
is_zero _ = False

-- list comprehension
a = [x*2 | x <- [1..5], mod x 2 == 0]

