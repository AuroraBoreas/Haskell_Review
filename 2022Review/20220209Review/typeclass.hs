import Data.List
import System.IO

-- typeclass
-- Num
-- Show
-- Eq
-- Ord // well-ordered principle
data Direction =
    North | West | South | East
    deriving (Show, Enum)

turnLeft :: Direction -> Direction
turnLeft East = North
turnLeft x = succ x

turnRight :: Direction -> Direction
turnRight North = East
turnRight x = pred x

turnAround :: Direction -> Direction
turnAround x = turnLeft $ turnLeft x

-- Enum to list
directions :: [Direction]
--directions = [North .. East]
directions = [North ..]
d2 :: [Direction]
d2 = map turnAround directions

-- ctr
data RGB = RGB Int Int Int

red :: RGB
red = RGB 255 0 0
green :: RGB
green = RGB 0 255 0
blue :: RGB
blue = RGB 0 0 255

addRGB :: RGB -> RGB -> RGB
addRGB (RGB r1 g1 b1) (RGB r2 g2 b2) =
    RGB (r1+r2) (g1+g2) (b1+b2)

instance Show RGB where
    show (RGB r g b) = "Color: " ++ show(r,g,b)

-- one more example

data Expr = Lit Int
    | Add Expr Expr
    | Sub Expr Expr

lit :: Expr -> Int
lit (Lit n) = n
lit (Add e1 e2) = lit e1 + lit e2
lit (Sub e1 e2) = lit e1 - lit e2

e1 = Lit 3
e2 = Lit 4
rv = lit e1

rv2 = map (\x -> lit (Sub (Lit x) (Lit 1))) [1 .. 5]
rv3 = foldr (\x y-> lit (Add (Lit x) (Lit y))) 0 [1..5]
