--5.7.1
summ :: Int -> Int
summ n = sum [x^2 | x <- [1..n]]

--5.7.2
grid :: Int -> Int -> [(Int, Int)]
grid x y = [(a,b) | a <- [0..x], b <- [0..y]]

--5.7.3
square :: Int -> [(Int, Int)]
square x = [(a,b) | a <- [0..x], b <- [0..x], a /= b]

--5.7.4
replicate1 :: Int -> a -> [a]
replicate1 n b = [b | _ <- [1..n]]

--5.7.5
pyths :: Int -> [(Int, Int, Int)]
pyths n = [(a,b,c) | a <- [1..n], b <- [1..n], c <- [1..n], a^2 + b^2 == c^2]

--helpful to 5.7.6
factors :: Int -> [Int]
factors n = [x | x <- [1..n], n `mod` x == 0]

--5.7.6
perfect :: Int -> [Int]
perfect n = [x | x <- [1..n], (sum (factors x)) - x  == x]

--5.7.7
--ommit just a try for the function concat

find :: Eq a => a -> [(a,b)] -> [b]
find k t = [v | (k', v) <- t, k == k']

--5.7.8
positions' :: Eq a => a -> [a] -> [Int]
positions' x xs = [i | i <- find x (zip xs [0..])]

--5.7.9
scalarproduct :: [Int] -> [Int] -> Int 
scalarproduct xs ys = sum [x * y | (x, y) <- zip xs ys]