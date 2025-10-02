--HC4T1 - Task 1: Define a weatherReport Function

Create a function weatherReport :: String -> String that takes a weather condition as a string (e.g., "sunny", "rainy", "cloudy") and returns a message describing the weather.
Use pattern matching to handle the following cases:
"sunny" → "It's a bright and beautiful day!"
"rainy" → "Don't forget your umbrella!"
"cloudy" → "A bit gloomy, but no rain yet!"
Any other input should return "Weather unknown".

     Using pattern matching 

weatherReport :: String -> String
weatherReport "sunny"  = "It's a bright and beautiful day!"
weatherReport "rainy"  = "Don't forget your umbrella!"
weatherReport "cloudy" = "A bit gloomy, but no rain yet!"
weatherReport _        = "Weather unknown"

main :: IO ()
main = do
  putStrLn (weatherReport "rainy")
  putStrLn (weatherReport "sunny")
  putStrLn (weatherReport "teslim")
  putStrLn (weatherReport "cloudy")
    --Output:
    --Don't forget your umbrella!
    --It's a bright and beautiful day!
    --Weather unknown
    --A bit gloomy, but no rain yet!

        using it then else 

weatherReport :: String -> String
weatherReport condition =
    if condition == "sunny"
    then "It's a bright and beautiful day!"
    else if condition == "rainy"
    then "Don't forget your umbrella!"
    else if condition == "cloudy"
    then "A bit gloomy, but no rain yet!"
    else "Weather unknown"
    
main :: IO ()
main = do
 putStrLn (weatherReport "rainy")
 putStrLn (weatherReport "sunny")
 putStrLn (weatherReport "teslim")
 putStrLn (weatherReport "cloudy")
 
--Output:Don't forget your umbrella!
It's a bright and beautiful day!
Weather unknown
A bit gloomy, but no rain yet!

       --Using guide 


weatherReport :: String -> String
weatherReport condition
    | condition == "sunny"  = "It's a bright and beautiful day!"
    | condition == "rainy"  = "Don't forget your umbrella!"
    | condition == "cloudy" = "A bit gloomy, but no rain yet!"
    | otherwise             = "Weather unknown"

main :: IO ()
main = do
    putStrLn (weatherReport "rainy")
    putStrLn (weatherReport "sunny")
    putStrLn (weatherReport "teslim")
    putStrLn (weatherReport "cloudy")


HC4T2 - Task 2: Define a dayType Function

Create a function dayType :: String -> String that determines if a given day of the week is a weekday or weekend.
"Saturday" and "Sunday" → "It's a weekend!"
Any other day of the week → "It's a weekday."
If an invalid day is provided, return "Invalid day".


dayType :: String -> String
dayType day =
  if day `elem` ["Saturday", "Sunday"]
  then "Weekend"
  else if day `elem` ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday"]
  then "Weekday"
  else "Invalid day"

main :: IO ()
main = do
  print $ dayType "Monday"    
  print $ dayType "Saturday"
  print $ dayType "Teslim"  

    using guide |

dayType :: String -> String
dayType day 
  | day `elem` ["Saturday", "Sunday"] = "weekend"
  | day `elem` ["Monday", "Tuesday", " Wednesday", "Thursday", "Friday"] = "weekday"
  | otherwise = "invalid day"
  
main :: IO ()
main = do
 putStrLn (dayType "Saturday")
 putStrLn (dayType "Monday")
 putStrLn (dayType "Teslim")
  --Output weekend 
        -- weekday 
        -- invalid day

    using Pattern Matching

dayType :: String -> String
dayType "Monday"    = "weekday"
dayType "Tuesday"   = "weekday"
dayType "Wednesday" = "weekday"
dayType "Thursday"  = "weekday"
dayType "Friday"    = "weekday"
dayType "Saturday"  = "weekend"
dayType "Sunday"    = "weekend"
dayType _           = "invalid day"

main :: IO ()
main = do
    putStrLn (dayType "Monday") 
    putStrLn (dayType "Sunday")     
    putStrLn (dayType "Teslim") 
      --Output weekday
            -- weekend 
            -- invalid day


--HC4T3 - Task 3: Define a gradeComment Function

Write a function gradeComment :: Int -> String that takes a numerical grade and returns a comment based on the grade range:
90 - 100 → "Excellent!"
70 - 89 → "Good job!"
50 - 69 → "You passed."
0 - 49 → "Better luck next time."
Any other number → "Invalid grade".


gradeComment :: Int -> String
gradeComment grade =
 if grade `elem` [90..100]
 then "Excellent"
 else if grade `elem` [70..89]
 then "Good job"
 else if grade `elem` [50..69]
 then "passed"
 else if grade `elem` [0..49]
 then "Better luck next time."
 else "Invalid grade"
 
main :: IO ()
main = do 
 putStrLn (gradeComment 75)
 putStrLn (gradeComment (-30))
 putStrLn (gradeComment 91)
 putStrLn (gradeComment 52)
 putStrLn (gradeComment 25)
  -- Outputs:
         --Good job
         --invalid grade 
         --Excellent
         --passed
         --Better luck next time 

gradeComment :: Int -> String
gradeComment grade =
 if grade `elem` [90..100] then "Excellent"
 else if grade `elem` [70..89] then "Good job"
 else if grade `elem` [50..69] then "passed"
 else if grade `elem` [0..49] then "Better luck next time."
 else "Invalid grade"
 
main :: IO ()
main = do 
 putStrLn (gradeComment 75)
 putStrLn (gradeComment (-30))
 putStrLn (gradeComment 91)
 putStrLn (gradeComment 52)
 putStrLn (gradeComment 25)
  -- Outputs:
         --Good job
         --invalid grade 
         --Excellent
         --passed
         --Better luck next time 

    using guide |

gradeComment :: Int -> String
gradeComment grade 
  | grade `elem` [90..100] = "Excellent"
  | grade `elem` [70..89]  = "Good Job"
  | grade `elem` [50..69]  = "passed"
  | grade `elem` [0..49]   = "Better luck next time."
  | otherwise              = "invalid grade"
  
main :: IO ()
main = do 
 putStrLn (gradeComment (-30))
 putStrLn (gradeComment 92)
 putStrLn (gradeComment 75)
 putStrLn (gradeComment 62)
 putStrLn (gradeComment 35)
 

  -- Outputs:
         --invalid grade 
         --Excellent
         --Good Job 
         --passed
         --Better luck next time 

HC4T4 - Task 4: Rewrite specialBirthday using Pattern Matching

specialBirthday :: Int -> String
specialBirthday 1  = "First birthday in 2025!"
specialBirthday 18 = "18th birthday in 2025!"
specialBirthday 50 = "Golden jubilee birthday!"
specialBirthday _  = "Not a special birthday."

main :: IO ()
main = do
  putStrLn (specialBirthday 25)
  putStrLn (specialBirthday 50)
  putStrLn (specialBirthday 18)
  putStrLn (specialBirthday 1)

         Using guide |

specialBirthday :: Int -> String
specialBirthday age 
  | age == 1 = "First birthday in 2025 !"
  | age == 18 = "18th birthday in 2025 !"
  | age == 50 = "Golden jubilee birthday!"
  | otherwise = "Not a special birthday."
  
main :: IO ()
main = do
 putStrLn (specialBirthday 25)
 putStrLn (specialBirthday 50)
 putStrLn (specialBirthday 18)
 putStrLn (specialBirthday 1)
 

--HC4T5 - Task 5: Add a Catch-All Pattern with a Custom Message
Modify specialBirthday to include the age in the return message when it doesn’t match predefined cases.

specialBirthday :: Int -> String
specialBirthday 1  = "First birthday in 2025!"
specialBirthday 18 = "18th birthday in 2025!"
specialBirthday 50 = "Golden jubilee birthday!"
specialBirthday age = "Age " ++ show age ++ " Not a special birthday."

main :: IO ()
main = do
  putStrLn (specialBirthday 25)
  putStrLn (specialBirthday 50)
  putStrLn (specialBirthday 18)
  putStrLn (specialBirthday 1)
    --Output:
     --  Age 25 Not a special birthday.
     --Golden jubilee birthday!
     --18th birthday in 2025!
     --First birthday in 2025!
