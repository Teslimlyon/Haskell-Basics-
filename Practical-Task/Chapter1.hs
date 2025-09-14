numbee :: Int -> Int 
number x = 42

main :: IO ()
main = do
 print $ number 42 --Answer = 42



number :: Float -> Float
number x = 3.14

main :: IO ()
main = do
 print $ number 3.14 --Answer = 3.14



word :: [Char] -> [Char]
word z = "z"

main :: IO () 
main = do
 print $ word "z" --Answer = z
 
           or
word :: String

add :: Float -> Float -> Float
add x y = x + y 

main :: IO ()
main = do
 print $ add 5.1 2.1 --AAnswer = 7.2

 

