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

Define the following immutable variables in Haskell:

    myAge as an Int
  
myAge :: Int
myAge = 32

main :: IO ()
main = do 
 print $ myAge  --Output 32
 
     piValue as a Double
 
piValue :: Double 
piValue = pi

main :: IO ()
main = do 
 print $ piValue   --Output 3.14
 
    greeting as a String

greeting :: String 
greeting = "Good morning Teslim"

main :: IO () 
main = do 
 putStrLn greeting --Good morning Teslim

    isHaskellFun as a Bool

isHaskellFun :: Bool
isHaskellFun = True

main :: IO ()
main = do 
 print $ isHaskellFun --Output True
 
 
--HC2T4 - Task 4: Converting Between Infix and Prefix Notations

Use prefix notation for the following infix expressions:

5 + 3
10 * 4
True && False
 
 Solution to the above:

prefix :: Int -> Int 
prefix x = x

main :: IO ()
main = do 
 print $ ((+) 5 3) --Output = 8

prefix :: Int -> Int
prefix x = x

main :: IO ()
main = do 
 print $ ((*) 10 4) -- Output = 40
 
expression :: Int -> Bool 
expression x = True

main :: IO ()
main = do
 print $ ((&&) True False) -- Output= False
             or 
         
expression :: Int -> Bool
expression _ = False   

main :: IO ()
main = do
    print ((&&) True True) --Output = True

Use infix notation for the following prefix functions:

--(+) 7 2
--(*) 6 5
--(&&) True False
-- Solution to the above:
 
--myFunc :: Int -> Int
--myFunc x = x

--main :: IO ()
--main = do
-- print (7 + 2) --Output = 9

--myFunc :: Int -> Int
--myFunc x = x

--main :: IO ()
--main = do 
 --print (6 * 5) --Outut = 30
 
expression :: Int -> Bool
expression x = True

main :: IO ()
main = do 
 print (True && False)
    

