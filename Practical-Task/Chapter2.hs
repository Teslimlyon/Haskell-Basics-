--HC2T1 - Task 1: Checking Types in GHCi
     Open GHCi and check the types of the following expressions:

42
3.14
"Haskell"
'Z'
True && False
     Solution to the above :
     
numbee :: Int -> Int 
number x = 42

main :: IO ()
main = do
 print $ number 42 --Output = 42


number :: Float -> Float
number x = 3.14

main :: IO ()
main = do
 print $ number 3.14 --Output = 3.14

            or
            
addNumber :: Float -> Float -> Float
addNumber x y = x + y 

main :: IO ()
main = do 
 print $ addNumber 2.14 1.0
 --Output = 3.14


main :: IO ()
main = do 
 print $ "Haskell"
  --Output = "Haskell"


word :: [Char] -> [Char]
word z = "z"

main :: IO () 
main = do
 print $ word "z" --Output = z
 
           or
           
word :: String -> String
word z = "z"

main :: IO ()
main = do
 print $ word "z" --Output = z


main :: IO ()
main = do 
 print $ True&&True
 print $ False&&False
 print $ True&&False
 print $ False&&True
  --Output =
   --True
   --False
   --False
   --False


    -- HC2T2 - Task 2: Function Type Signatures
 A function add that takes two Int values and returns their sum.

add :: Int -> Int -> Int
add x y = x + y 

main :: IO ()
main = do
 print $ add 200 20 --Output = 220


  A function isEven that takes an Int and returns a Bool indicating if it's even.

isEven :: Int -> Bool
isEven n = n `mod` 2 == 0

main :: IO ()
main = do 
 print $ isEven 2 --Output True
 print $ isEven 3 -- Output False
 print $ isEven 100 --Output True

 A function concatStrings that takes two String values and returns their concatenation.

concatStrings :: String -> String -> String
concatStrings x y = x ++ y 

main :: IO ()
main = do 
 putStrLn (concatStrings "Teslim," "is a good boy")  --Output = Teslim is a good boy 

--HC2T3 - Task 3: Immutable Variables
 myAge as an Int




