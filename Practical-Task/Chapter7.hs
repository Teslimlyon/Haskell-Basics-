-- HC7T1: Implement an Eq Instance for a Custom Data Type

data Color = Red | Green | Blue

instance Eq Color where
  Red   == Red   = True
  Green == Green = True
  Blue  == Blue  = True
  _     == _     = False

main :: IO ()
main = do
  print (Red == Red)
  print (Green == Blue)
  print (Blue == Blue)


-- HC7T1: Implement the Eq type class for Color

data Color = Red | Green | Blue deriving (Show)

instance Eq Color where
  (==) Red Red     = True
  (==) Green Green = True
  (==) Blue Blue   = True
  (==) _ _         = False

main :: IO ()
main = do
  print (Red == Red)
  print (Green == Blue)
  print (Blue == Blue)


-- HC7T2: Implement an Ord Instance for a Custom Data Type

data Color = Red | Green | Blue deriving (Eq, Show)

instance Ord Color where
  compare Red Green  = LT
  compare Red Blue   = LT
  compare Green Blue = LT
  compare Green Red  = GT
  compare Blue Red   = GT
  compare Blue Green = GT
  compare _ _        = EQ

main :: IO ()
main = do
  print (Red < Green)    -- True
  print (Green < Blue)   -- True
  print (Blue > Red)     -- True
  print (Red == Red)     -- True




-- HC7T3: Function Using Multiple Constraints

compareValues :: (Ord a) => a -> a -> a
compareValues x y =
  if x > y then x else y

main :: IO ()
main = do
  print (compareValues 10 20)     -- 20
  print (compareValues 'a' 'z')   -- 'z'
  print (compareValues 3.5 2.1)   -- 3.5


-- HC7T3: Function Using Multiple Constraints

compareValues :: (Eq a, Ord a) => a -> a -> a
compareValues x y =
  if x >= y then x else y

main :: IO ()
main = do
  print (compareValues 10 20)     -- 20
  print (compareValues 'a' 'z')   -- 'z'
  print (compareValues 3.5 2.1)   -- 3.5



-- HC7T4: Custom Type with Show and Read

data Shape = Circle Double | Rectangle Double Double
  deriving (Show, Read)

main :: IO ()
main = do
  let c = Circle 5.0
  let r = Rectangle 4.0 6.0
  print c
  print r
  print (read "Circle 5.0" :: Shape)
  print (read "Rectangle 4.0 6.0" :: Shape)


-- HC7T4: Custom Type with Show and Read

data Shape = Circle Double | Rectangle Double Double

instance Show Shape where
  show (Circle r) = "Circle with radius " ++ show r
  show (Rectangle w h) = "Rectangle with width " ++ show w ++ " and height " ++ show h

instance Read Shape where
  readsPrec _ input =
    case words input of
      ["Circle", r] ->
        [(Circle (read r), "")]
      ["Rectangle", w, h] ->
        [(Rectangle (read w) (read h), "")]
      _ -> []

main :: IO ()
main = do
  let c = Circle 5.0
  let r = Rectangle 4.0 6.0
  print c
  print r
  print (read "Circle 5.0" :: Shape)
  print (read "Rectangle 4.0 6.0" :: Shape)


-- HC7T5: Function with Num Constraint

squareArea :: Num a => a -> a
squareArea side = side * side

main :: IO ()
main = do
  print (squareArea 4)     -- 16
  print (squareArea 5.5)   -- 30.25


-- HC7T5: Function with Num Constraint

squareArea :: Num a => a -> a
squareArea side = side * side

main :: IO ()
main = do
  print (squareArea (4 :: Int))      -- 16
  print (squareArea (5.5 :: Double)) -- 30.25
  print (squareArea (7 :: Float))    -- 49.0



-- HC7T6: Using Integral and Floating Type Classes

circleCircumference :: (Real a, Floating b) => a -> b
circleCircumference r = 2 * pi * realToFrac r

main :: IO ()
main = do
  print (circleCircumference (5 :: Int))     -- 31.41592653589793
  print (circleCircumference (3.5 :: Double)) -- 21.991148575128552



-- HC7T6: Using Integral and Floating Type Classes

circleCircumference :: (Real a, Floating b) => a -> b
circleCircumference r = 2 * pi * realToFrac r

main :: IO ()
main = do
  print (circleCircumference (5 :: Int))      -- 31.41592653589793
  print (circleCircumference (7 :: Integer))  -- 43.982297150257104
  print (circleCircumference (3.5 :: Double)) -- 21.991148575128552
  print (circleCircumference (2.7 :: Float))  -- 16.964601533075506


-- HC7T7: Bounded and Enum

data Color = Red | Green | Blue
  deriving (Eq, Show, Enum, Bounded)

nextColor :: Color -> Color
nextColor c
  | c == maxBound = minBound
  | otherwise     = succ c

main :: IO ()
main = do
  print (nextColor Red)    -- Green
  print (nextColor Green)  -- Blue
  print (nextColor Blue)   -- Red


-- HC7T8: Parse a Value from a String Using Read

data Shape = Circle Double | Rectangle Double Double
  deriving (Show, Read)

parseShape :: String -> Shape
parseShape str = read str

main :: IO ()
main = do
  print (parseShape "Circle 5.0")         -- Circle 5.0
  print (parseShape "Rectangle 4.0 6.0")  -- Rectangle 4.0 6.0




-- HC7T8: Parse a Value from a String Using Read Safely

data Shape = Circle Double | Rectangle Double Double
  deriving (Show, Read)

parseShape :: String -> Maybe Shape
parseShape str = case reads str of
  [(shape, "")] -> Just shape
  _             -> Nothing

main :: IO ()
main = do
  print (parseShape "Circle 5.0")         -- Just (Circle 5.0)
  print (parseShape "Rectangle 4.0 6.0")  -- Just (Rectangle 4.0 6.0)
  print (parseShape "Triangle 3.0 4.0")   -- Nothing



-- HC7T9: Type Class with Multiple Instances

data Shape = Circle Double | Square Double | Rectangle Double Double
  deriving (Show, Read)

class Describable a where
  describe :: a -> String

instance Describable Bool where
  describe True  = "This is True — represents a positive or on state."
  describe False = "This is False — represents a negative or off state."

instance Describable Shape where
  describe (Circle r) = "A circle with radius " ++ show r
  describe (Square s) = "A square with side length " ++ show s
  describe (Rectangle w h) = "A rectangle with width " ++ show w ++ " and height " ++ show h

main :: IO ()
main = do
  print $ describe True
  print $ describe False
  print $ describe (Circle 5)
  print $ describe (Square 3)
  print $ describe (Rectangle 4 6)