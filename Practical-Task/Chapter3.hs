applyTwise :: Int -> Int -> Int
applyTwise a b = 
 let x = (a + 8) 
     y = (b + 4) 
     z = x + y
  in z
main :: IO ()
main = do 
 print $ applyTwise 6 8
 print $ applyTwise 8 4
 print $ applyTwise 6 8
