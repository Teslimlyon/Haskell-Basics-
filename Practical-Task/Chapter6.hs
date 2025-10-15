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



sumList :: [Int] -> Int
sumList = foldr (+) 0

main :: IO ()
main = do 
 print $ sumList [5,5,10]
  --Output 20



productList :: [Int] -> Int
productList = foldr (*) 1

main :: IO ()
main = do 
 print $ productList [5,5,10]
  --Output 250