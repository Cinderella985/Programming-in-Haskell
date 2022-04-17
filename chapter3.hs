--3.11.2
apply :: (t1 -> t2) -> t1 -> t2
apply f = f

--3.11.3
second :: [a] -> a
second xs = head (tail xs)

swap :: (b, a) -> (a, b)
swap (x,y) = (y,x)

pair :: a -> b -> (a, b)
pair x y = (x,y)

double :: Num a => a -> a
double x = x*2

palindrome :: Eq a => [a] -> Bool
palindrome xs = reverse xs == xs

twice :: (t1 -> t1) -> t1 -> t1
twice f x = f (f x)