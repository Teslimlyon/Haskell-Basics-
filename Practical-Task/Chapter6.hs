factorial :: Integer -> Integer 
factorial 0 = 1
factorial x = x * factorial (x - 1)

main :: IO () 
main = do 
 print $ factorial 5 
 --Output 120