import Data.List
import System.IO

data BaseballPlayer = Pitcher
                    | Catcher
                    | Infielder
                    | Outfilder
                deriving Show

barryBonds :: BaseballPlayer -> Bool
barryBonds Outfilder = True
barryBonds _ = False

barryInOf = print (barryBonds Outfilder)
