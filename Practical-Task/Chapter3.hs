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


--Conver RGB to Hex
import Text.Printf (printf)

rgbToHex :: (Int, Int, Int) -> String
rgbToHex (r, g, b) =
  let rh = printf "%02X" r  
      gh = printf "%02X" g  
      bh = printf "%02X" b  
  in rh ++ gh ++ bh         

main :: IO ()
main = do
  print $ rgbToHex (255, 0, 127)
  print $ rgbToHex (0, 255, 64)
 
  --Output:"FF007F"
    --     "00FF40"

import Text.Printf (printf)

rgbToHex :: (Int, Int, Int) -> String 
rgbToHex (r, g, b) = printf "#%02X%02X%02X" r g b

main :: IO ()
main = do 
 print $ rgbToHex (255, 0, 127)
 print $ rgbToHex (0, 255, 64)

   --Output:"FF007F"
    --     "00FF40"


To convert Hex back to RGB 

--Convert Hex to RGB 
import Numeric (readHex)

hexToRgb :: String -> (Int, Int, Int)
hexToRgb ('#':xs) = hexToRgb xs   
hexToRgb hex =
  let (rHex, rest1) = splitAt 2 hex
      (gHex, bHex)  = splitAt 2 rest1
      [(r, _)] = readHex rHex
      [(g, _)] = readHex gHex
      [(b, _)] = readHex bHex
  in (r, g, b)

main :: IO ()
main = do
  print $ hexToRgb "FF007F"
  print $ hexToRgb "#00FF40"
  
  --Output (255,0,127)
        -- (0,255,64)



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
  print (triangleArea 3 4 5) 
  print (triangleArea 7 8 9)  
 --Output 6.0
 --Output 26.83

triangleArea :: Float -> Float -> Float -> Float
triangleArea a b c =
  let s = (a + b + c) / 2
  in sqrt (s * (s - a) * (s - b) * (s - c))

main :: IO ()
main = do
  print (triangleArea 5 5 2)
  print (triangleArea 5 8 9)
   --Output 4.8989797
         -- 19.899748


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
  print (isLeapYear 2000)
  print (isLeapYear 1900)
  print (isLeapYear 2024) 

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


season :: Int -> String
season m =
  if m == 12 || m == 1 || m == 2 then "Winter"
  else if m == 3 || m == 4 || m == 5 then "Spring"
  else if m == 6 || m == 7 || m == 8 then "Summer"
  else if m == 9 || m == 10 || m == 11 then "Autumn"
  else "Invalid month"

main :: IO ()
main = do
  print (season 3) 
  print (season 7) 
  print (season 11)  
  print (season 15)



--HC3T8 - Advanced Task 8: Calculate BMI and return category using where

Define bmiCategory :: Float -> Float -> String.
Use where to calculate BMI: bmi = weight / height^2.
Use guards to classify BMI:
<18.5: "Underweight"
18.5 to 24.9: "Normal"
25 to 29.9: "Overweight"
≥30: "Obese"
Test with bmiCategory 70 1.75 and bmiCategory 90 1.8.


bmiCategory :: Float -> Float -> String
bmiCategory weight height
  | bmi < 18.5 = "Underweight"
  | bmi < 25   = "Normal"
  | bmi < 30   = "Overweight"
  | otherwise  = "Obese"
  where
    bmi = weight / (height ^ 2)

main :: IO ()
main = do
  print $ bmiCategory 70 1.75   -- Output: "Normal"
  print $ bmiCategory 90 1.8    -- Output: "Overweight"

    -- using let 

bmiCategory :: Float -> Float -> String
bmiCategory weight height =
  let bmi = weight / (height ^ 2)
  in if bmi < 18.5 then "Underweight"
     else if bmi < 25 then "Normal"
     else if bmi < 30 then "Overweight"
     else "Obese"

main :: IO ()
main = do
  print $ bmiCategory 70 1.75   -- Output: "Normal"
  print $ bmiCategory 90 1.8    -- Output: "Overweight"



--HC3T9 - Advanced Task 9: Find the maximum of three numbers using let

Define maxOfThree :: Int -> Int -> Int -> Int.
Use let to store intermediate max values.
Return the maximum of the three numbers.
Test with maxOfThree 10 20 15 and maxOfThree 5 25 10.

maxOfThree :: Int -> Int -> Int -> Int
maxOfThree x y z =
  let maxXY = max x y
      maxXYZ = max maxXY z
  in maxXYZ

main :: IO ()
main = do
  print $ maxOfThree 10 20 15   -- Output: 20
  print $ maxOfThree 5 25 10    -- Output: 25


--HC3T10 - Advanced Task 10: Check if a string is a palindrome using recursion and guards

Define isPalindrome :: String -> Bool.
Use guards:
If the string has 0 or 1 characters: True
If the first and last characters match, recursively check the rest.
Otherwise, return False.
Test with isPalindrome "racecar", isPalindrome "haskell", and isPalindrome "madam".

isPalindrome :: String -> Bool
isPalindrome str
  | length str <= 1 = True
  | head str == last str = isPalindrome (init (tail str))
  | otherwise = False

main :: IO ()
main = do
  print $ isPalindrome "racecar"   -- Output: True
  print $ isPalindrome "haskell"   -- Output: False
  print $ isPalindrome "madam"     -- Output: True



isPalindrome :: String -> Bool
isPalindrome str
  | length str <= 1 = True
  | head str == last str = isPalindrome (init (tail str))
  | otherwise = False

main :: IO ()
main = do
  print $ isPalindrome "racecar"
  print $ isPalindrome "Teslim"
  print $ isPalindrome "madam"
   --Output: True
         --  False
         --  True 

Note:

Teslim" prints False because a palindrome requires the string to read the same forwards and backwards.

Let’s check manually:

"Teslim" forward → T e s l i m

"Teslim" backward → m i l s e T


Since "Teslim" ≠ "milesT", it is not a palindrome, so the function correctly returns False.

           OR

-- Function to check if a string is a palindrome
isPalindrome :: String -> Bool
isPalindrome str = str == reverse str

main :: IO ()
main = do
    print $ isPalindrome "madam"      
    print $ isPalindrome "racecar"    
    print $ isPalindrome "haskell"    
    print $ isPalindrome "ada"    
     --Output True
            --True
            --False
            --Trur