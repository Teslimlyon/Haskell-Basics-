--HC3T1 - Task 1: Check if a number is positive, negative, or zero

Define a function checkNumber :: Int -> String.
Use an if-then-else statement to check if the number is positive, negative, or zero.
Return "Positive", "Negative", or "Zero" accordingly.
Test your function with checkNumber 5, checkNumber (-3), and checkNumber 0


checkNumber :: Int -> String
checkNumber n =
  if n > 0 
    then "Positive"
    else if n < 0 
           then "Negative"
           else "Zero"

main :: IO ()
main = do
  print (checkNumber 5)
  print (checkNumber (-3))
  print (checkNumber 0)
  --Outputs: Positive 
           --Negative
           --Zero

--HC3T2 - Task 2: Determine the grade based on a score using guards

Define a function grade :: Int -> String.
Use guards (|) to classify scores into grades:
90 and above: "A"
80 to 89: "B"
70 to 79: "C"
60 to 69: "D"
Below 60: "F"
Test your function with grade 95, grade 72, and grade 50.


grade :: Int -> String
grade score
  | score >= 90 = "A"
  | score >= 80 = "B"
  | score >= 70 = "C"
  | score >= 60 = "D"
  | otherwise   = "F"

main :: IO ()
main = do
  print (grade 95)
  print (grade 72)
  print (grade 50)
    --Output :A
      --      C
       --     F
    


--HC3T3 - Task 3: Convert an RGB color to a hex string using let bindings

Define a function rgbToHex :: (Int, Int, Int) -> String.
Use let bindings to format each color component as a two-character hex string.
Concatenate the three hex values into a single string.
Test your function with rgbToHex (255, 0, 127) and rgbToHex (0, 255, 64).


import Text.Printf (printf)

rgbToHex :: (Int, Int, Int) -> String
rgbToHex (r, g, b) =
  let rh = printf "%02X" r  
      gh = printf "%02X" g  
      bh = printf "%02X" b  
  in rh ++ gh ++ bh         

main :: IO ()
main = do
  putStrLn $ "rgbToHex (255, 0, 127) = " ++ rgbToHex (255, 0, 127)
  putStrLn $ "rgbToHex (0, 255, 64)  = " ++ rgbToHex (0, 255, 64)


To convert Hex back to RGB 


import Numeric (readHex)

-- Convert Hex to RGB
hexToRgb :: String -> (Int, Int, Int)
hexToRgb ('#':xs) = hexToRgb xs   
hexToRgb hex =
  let (rHex, rest1) = splitAt 2 hex
      (gHex, bHex)  = splitAt 2 rest1
      [(r, _)] = readHex rHex
      [(g, _)] = readHex gHex
      [(b, _)] = readHex bHex
  in (r, g, b)

-- Main function for testing only hexToRgb
main :: IO ()
main = do
  putStrLn "Testing hexToRgb:"
  print $ hexToRgb "FF007F"
  print $ hexToRgb "#00FF40"

--HC3T4 - Task 4: Calculate the area of a triangle using Heron's formula
Define a function triangleArea :: Float -> Float -> Float -> Float.
Use let to calculate the semi-perimeter s.
Apply Heron’s formula: sqrt(s * (s - a) * (s - b) * (s - c)).
Test with triangleArea 3 4 5 and triangleArea 7 8 9.


triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c =
  let s = (a + b + c) / 2
  in sqrt (s * (s - a) * (s - b) * (s - c))

main :: IO ()
main = do
  print (triangleArea 3 4 5)   -- should return 6.0
  print (triangleArea 7 8 9)   -- should return ~26.83


HC3T5 - Task 5: Determine the type of a triangle using guards

Define a function triangleType :: Float -> Float -> Float -> String.
Use guards to classify the triangle:
All sides equal: "Equilateral"
Two sides equal: "Isosceles"
No sides equal: "Scalene"
Test with triangleType 3 3 3, triangleType 5 5 8, and triangleType 6 7 8.

triangleType :: Float -> Float -> Float -> String
triangleType x y z = 
   if x == y && y == z
   then "Equilateral"
   else if x == y || y == z || x == z
   then "Isosceles"
   else "Scalene"

main :: IO ()
main = do 
 putStrLn (triangleType 3 3 3)
 putStrLn (triangleType 5 5 8)
 putStrLn (triangleType 6 7 8)

--HC3T6 - Advanced Task 6: Check leap year using if-then-else

Define isLeapYear :: Int -> Bool.
Use if-then-else to check:
Divisible by 400: True
Divisible by 100 but not 400: False
Divisible by 4: True
Otherwise: False
Test with isLeapYear 2000, isLeapYear 1900, and isLeapYear 2024.


isLeapYear :: Int -> Bool
isLeapYear year =
  if year `mod` 400 == 0 
  then True
  else if year `mod` 100 == 0 
  then False
  else if year `mod` 4 == 0 
  then True
  else False

main :: IO ()
main = do
  print (isLeapYear 2000)  -- True (divisible by 400)
  print (isLeapYear 1900)  -- False (divisible by 100 but not 400)
  print (isLeapYear 2024)  -- True (divisible by 4 but not 100)

--HC3T7 - Advanced Task 7: Determine the season based on the month using guards

Define season :: Int -> String.
Use guards to return:
12, 1, 2 → "Winter"
3, 4, 5 → "Spring"
6, 7, 8 → "Summer"
9, 10, 11 → "Autumn"
Test with season 3, season 7, and season 11.


season :: Int -> String
season m
  | m == 12 || m == 1 || m == 2  = "Winter"
  | m == 3  || m == 4 || m == 5  = "Spring"
  | m == 6  || m == 7 || m == 8  = "Summer"
  | m == 9  || m == 10 || m == 11 = "Autumn"
  | otherwise = "Invalid month"

main :: IO ()
main = do
  print (season 3)   -- "Spring"
  print (season 7)   -- "Summer"
  print (season 11)  -- "Autumn"





bmiCategory :: Float -> Float -> String
bmiCategory weight height
  | bmi < 18.5 = "Underweight"
  | bmi < 25   = "Normal"
  | bmi < 30   = "Overweight"
  | otherwise  = "Obese"
  where
    bmi = weight / (height ^ 2)

-- Testing
main :: IO ()
main = do
  print $ bmiCategory 70 1.75   -- Expected: "Normal"
  print $ bmiCategory 90 1.8    -- Expected: "Overweight"