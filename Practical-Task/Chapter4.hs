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
