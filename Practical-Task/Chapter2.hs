--HC2T1 - Task 1: Checking Types in GHCi
     Open GHCi and check the types of the following expressions:

42
3.14
"Haskell"
'Z'
True && False

numbee :: Int -> Int 
number x = 42

main :: IO ()
main = do
 print $ number 42 --Answer = 42



number :: Float -> Float
number x = 3.14

main :: IO ()
main = do
 print $ number 3.14 --Answer = 3.14



word :: [Char] -> [Char]
word z = "z"

main :: IO () 
main = do
 print $ word "z" --Answer = z
 
           or
           
word :: String -> String
word z = "z"

main :: IO ()
main = do
 print $ word "z" --Answer = z

     Function Type Signatures

add :: Float -> Float -> Float
add x y = x + y 

main :: IO ()
main = do
 print $ add 5.1 2.1 --AAnswer = 7.2



isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

main :: IO ()
main = do 
 print $ isEven 2 --Answwr True
 print $ isEven 3 -- Answer False
 print $ isEven 100 -- Answer True



concatStrings :: String -> String -> String
concatStrings x y = x ++ y 

main :: IO ()
main = do 
 putStrLn (concatStrings "Teslim," "is a good boy")  -- Answer = Teslim is a good boy 

 
      Immutable Variables


