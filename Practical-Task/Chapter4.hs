--HC4T1 - Task 1: Define a weatherReport Function

Create a function weatherReport :: String -> String that takes a weather condition as a string (e.g., "sunny", "rainy", "cloudy") and returns a message describing the weather.
Use pattern matching to handle the following cases:
"sunny" → "It's a bright and beautiful day!"
"rainy" → "Don't forget your umbrella!"
"cloudy" → "A bit gloomy, but no rain yet!"
Any other input should return "Weather unknown".


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