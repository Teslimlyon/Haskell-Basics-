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


    Pure Function Example
    
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
 
 
greaterThan18 :: Int -> Bool
greaterThan18 x = x >= 18

main :: IO ()
main = do 
 print $ greaterThan18 18  --True
 print $ greaterThan18 10  --Falsw
 print $ greaterThan18 20  --True

      
