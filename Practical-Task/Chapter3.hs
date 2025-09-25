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