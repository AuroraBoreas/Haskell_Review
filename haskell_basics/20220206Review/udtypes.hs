import Data.List
import System.IO

-- enum
data BaseballPlayer = Pitcher
                    | Catcher
                    | Infielder
                    | Outfilder
                deriving Show

barryBonds :: BaseballPlayer -> Bool
barryBonds Outfilder = True
barryBonds _ = False

barryInOf = print (barryBonds Outfilder)

-- struct
data Customer = Customer String String Double
    deriving Show

zl :: Customer
zl = Customer "Zhang Liang" "123 Main" 3.14

getBalance :: Customer -> Double
getBalance (Customer _ _ b) = b

-- Rock Paper Scissors
data RPS = Rock | Paper | Scissors

shoot :: RPS -> RPS -> String
shoot Paper Rock = "Paper Beats Rock"
shoot Rock Scissors = "Rock Beats Scissors"
shoot Scissors Paper = "Scissors Beats Paper"
shoot Scissors Rock = "Scissors Loses to Rock"
shoot Paper Scissors = "Paper Loses to Scissors"
shoot Rock Paper = "Rock Loses to Paper"
shoot _ _ = "Error"

-- Shape
data Shape = Circle Float Float Float
            | Retangle Float Float Float Float
            deriving Show

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
-- $ sign means: any thing after $ sign is precedented
area (Retangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs (y2 - y1))

-- Custome Type
data Employee = Employee
                {
                    name :: String,
                    position :: String,
                    idNum :: Int
                } deriving (Eq, Show)

lz = Employee {
        name = "Zhang Liang",
        position = "Manager",
        idNum = 123
    }

cy = Employee {
        name = "scy",
        position = "Engineer",
        idNum = 121
    }

isEq = lz == cy
zlData = show lz

-- Eq, protocol
data ShirtSize = S | M | L

instance Eq ShirtSize where
    S == S = True
    M == M = True
    L == L = True
    _ == _ = False

instance Show ShirtSize where
    show S = "Small"
    show M = "Medium"
    show L = "Large"

smalls = S `elem` [S, M, L]

theSize = show S

-- class
class MyEq a where
    areEq :: a -> a -> Bool

instance MyEq ShirtSize where
    areEq S S = True
    areEq M M = True
    areEq L L = True
    areEq _ _ = True
