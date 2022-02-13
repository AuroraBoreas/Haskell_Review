import System.IO
import Data.List

-- record
data Person = Person {name :: String,
                        age :: Int}

greet :: Person -> [Char]
greet person = "Hi " ++ name person
-- or
greet' (Person n _) = "Hi " ++ n

-- multi ctr
data Point =
    D2 {x :: Int, y :: Int}
    | D3 {x :: Int, y :: Int, z :: Int}

p1 :: Point
p2 :: Point
p1 = D2 1 2
p2 = D3 1 2 3
