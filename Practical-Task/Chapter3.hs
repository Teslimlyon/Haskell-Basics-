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