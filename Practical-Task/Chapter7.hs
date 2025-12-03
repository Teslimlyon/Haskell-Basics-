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