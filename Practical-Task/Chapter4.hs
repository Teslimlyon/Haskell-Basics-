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
 

