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