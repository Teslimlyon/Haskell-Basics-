--HC1T1 - Task 1: Function Composition
    double: Multiplies a number by 2
    
double :: Int -> Int
double x = x * 2 

main :: IO ()
main = do
 print $ double 100  -- Answer = 200


increment :: Int -> Int 
increment x = x + 1

main :: IO ()
main = do
 print $ increment 200 -- Answer = 201
 
doubleThenIncrement :: Int -> Int 
doubleThenIncrement x = x * 2 + 1 

main :: IO ()
main = do
  print $ doubleThenIncrement 200  -- Answer = 401


  --  HC1T2 - Task 2: Pure Function Example
   
    Write a function circleArea that calculates the area of a circle given the radius. Ensure that it’s pure and does not depend on any external state.
    
circleArea :: Float -> Float 
circleArea x = pi 

main :: IO ()
main = do 
 print $ circleArea pi -- Answer= 3.1415927
 
circleArea :: Float -> Float 
circleArea x = pi * x

main :: IO ()
main = do 
 print $ circleArea 10 -- Answer = 31.415928


circleArea :: Float -> Float -> Float
circleArea x y = pi * x * y

main :: IO ()
main = do 
 print $ circleArea 10 2  -- Answer = 62.831856


circleArea :: (Real a, Floating b) => a -> b
circleArea r = pi * (realToFrac r) * (realToFrac r)

main :: IO ()
main = do
  print (circleArea (5 :: Int))      -- 78.53981633974483
  print (circleArea (10 :: Integer)) -- 314.1592653589793
  print (circleArea (7.5 :: Float))  -- 176.71458676442586
  print (circleArea (3.2 :: Double)) -- 32.169908772759484

 
-- HC1T3 - Task 3: Checking if a Number is Greater than 18

 Write a function greaterThan18 that checks whether a given number is greater than 18.
 
greaterThan18 :: Int -> Bool
greaterThan18 x = x >= 18

main :: IO ()
main = do 
 print $ greaterThan18 18  --True
 print $ greaterThan18 10  --Falsw
 print $ greaterThan18 20  --True

--HC1T5 - Task 5: Laziness in Haskell
Create a function infiniteNumbers that generates an infinite list of numbers. Extract only the first n elements.

infiniteNumbers :: [Integer]
infiniteNumbers = [0..]

extractFirstN :: Int -> [Integer]
extractFirstN n = take n infiniteNumbers

main :: IO ()
main = do
 print $ extractFirstN 10
 -- Output =[0,1,2,3,4,5,6,7,8,9]

--HC1T6 - Task 6: Using Type Signatures
Define a function addNumbers that takes two integers and returns their sum.

addNumbers :: Int -> Int -> Int
addNumbers x y = x + y


main :: IO ()
main = do
    print (addNumbers 5 7)   -- Output: 12
    print (addNumbers 10 20) -- Output: 30

--HC1T7 - Task 7: Converting Fahrenheit to Celsius
Write a function fToC that converts Fahrenheit to Celsius.

fToC :: Double -> Double 
fToC f = ( f - 32 ) * 5 / 9

main :: IO ()
main = do 
 print (fToC 120) --Output = 48.888888888888886

 To convert Celsius nack to Fahrenheit
 
celsius :: Double -> Double 
celsius c = ( c * 9 ) / 5 + 32

main :: IO ()
main = do
 print (celsius 48.888888888888886)
 --Output = 120.0
 
 --HC1T8 - Task 8: Higher-Order Functions
Create a function applyTwice that applies a function twice to an input value.

applyTwice :: (a -> a) -> a -> a
applyTwice f x = f (f x)

main :: IO ()
main = do 
 print (applyTwice (*10) 10)  --Output = 1000   

     or 

applyTwise :: Int -> Int -> Int
applyTwise a b = 
 let x = (a + 8) 
     y = (b + 4) 
     z = x + y
  in z
main :: IO ()
main = do 
 print $ applyTwise 6 8
 print $ applyTwise 8 4
 print $ applyTwise 6 8