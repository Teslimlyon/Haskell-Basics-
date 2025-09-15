Function Composition
    
double :: Int -> Int
double x = x * 2 

main :: IO ()
main = do
 print $ double 100  -- Answer = 200


increment :: Int -> Int 
increment x = x + 1

main :: IO ()
main = do
 print $ increment 200 -- Answer = 201
 
doubleThenIncrement :: Int -> Int 
doubleThenIncrement x = x * 2 + 1 

main :: IO ()
main = do
  print $ doubleThenIncrement 200  -- Answer = 401
 
 
greaterThan18 :: Int -> Bool
greaterThan18 x = x >= 18

main :: IO ()
main = do 
 print $ greaterThan18 18  --True
 print $ greaterThan18 10  --Falsw
 print $ greaterThan18 20  --True

      
