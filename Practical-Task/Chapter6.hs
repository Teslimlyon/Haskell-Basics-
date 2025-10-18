--HC6T1: Factorial (Recursive)
Implement a recursive function to compute the factorial of a number.

factorial :: Integer -> Integer 
factorial 0 = 1
factorial x = x * factorial (x - 1)

main :: IO () 
main = do 
 print $ factorial 5 
 --Output 120


--HC6T2: Fibonacci (Recursive)
Implement a recursive function to compute the nth Fibonacci number

fibonacci :: Integer -> Integer 
fibonacci 0 = 0

fibonacci 1 = 1

fibonacci x = fibonacci (x - 1) + fibonacci (x - 2)

main :: IO () 
main = do 
 print $ fibonacci 10
  --Output 55


--HC6T3: Sum of Elements Using foldr
Implement a function to compute the sum of elements in a list using foldr

sumList :: [Int] -> Int
sumList = foldr (+) 0

main :: IO ()
main = do 
 print $ sumList [5,5,10]
  --Output 20


--HC6T4: Product of Elements Using foldl
Implement a function to compute the product of elements in a list using foldl

productList :: [Int] -> Int
productList = foldr (*) 1

main :: IO ()
main = do 
 print $ productList [5,5,10]
  --Output 250


--HC6T5: Reverse a List (Recursive)
Implement a function that reverses a list using recursion.

reverseList:: [a] -> [a]
reverseList [] = []

reverseList (x:xs) = reverseList xs ++ [x]

main :: IO ()
main = do 
 print $ reverseList [2,5,10]
 --Output [10,5,2]


--HC6T6: Element Exists in List
Implement a function that determines whether a given element exists in a list.

elementExists :: (Eq a) => a -> [a] -> Bool
elementExists _ [] = False 

elementExists x (y:ys)
 | x == y    = True 
 | otherwise = elementExists x ys
 
main :: IO () 
main = do 
 print $ elementExists 5 [2,5,3]
 print $ elementExists 2 [3,4,1]
 
  --Output True 
        -- False 


listLength :: [a] -> Int
listLength lst = length lst

main :: IO ()
main = do
    let myList = [1,2,3,4,5,6]
    print (listLength myList)
  --Output: 6

         or

listLength :: [a] -> Int
listLength lst = length lst

main :: IO ()
main = do
    let myList = [1,2,3,4,5,6]
    putStrLn $ "The length of the list is: " ++ show (listLength myList)

 --Output: The length of the list is: 6