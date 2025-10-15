factorial :: Integer -> Integer 
factorial 0 = 1
factorial x = x * factorial (x - 1)

main :: IO () 
main = do 
 print $ factorial 5 
 --Output 120



fibonacci :: Integer -> Integer 
fibonacci 0 = 0

fibonacci 1 = 1

fibonacci x = fibonacci (x - 1) + fibonacci (x - 2)

main :: IO () 
main = do 
 print $ fibonacci 10
  --Output 55