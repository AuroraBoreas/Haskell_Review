import Data.List
import System.IO

-- io
sayHello = do
    putStrLn "what's your name?"
    name <- getLine
    putStrLn $ "hello " ++ name

-- file io

writeToFile = do
    theFile <- openFile "test.txt" WriteMode
    hPutStrLn theFile ("Random line of text")
    hClose theFile

readFromFile = do
    theFile2 <- openFile "test.txt" ReadMode
    contents <- hGetContents theFile2
    putStrLn contents
    hClose theFile2

-- fibonacci
fib = 1 : 1 : [a + b | (a, b) <- zip fib $ tail fib]
