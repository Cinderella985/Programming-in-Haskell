--4.8.1
halve :: [a] -> ([a], [a])
halve xs = (take n xs, drop n xs) where n = (length xs) `div` 2

--4.8.2
--a. head and tail
third1 :: [a] -> a
third1 xs = head (tail (tail xs))

--b. list indexing !!
third2 :: [a] -> a
third2 xs = xs !! 2

--c. pattern matching
third3 :: [a] -> a
third3 (_:_:x:_) = x

--4.8.3
--conditional mapping
safeTail1 :: [a] -> [a]
safeTail1 xs = if null xs then [] else tail xs 

--guarded equations
safeTail2 :: [a] -> [a]
safeTail2 xs | null xs = []
             | otherwise = tail xs

--pattern matching
safeTail3 :: [a] -> [a]
safeTail3 [] = []
safeTail3 xs = tail xs

--4.8.4 logic ||
or1 :: Bool -> Bool -> Bool
or1 False False = False 
or1 _ _         = True

or2 :: Bool -> Bool -> Bool
or2 True _  = True 
or2 False b = b

--4.8.5
and1 :: Bool -> Bool -> Bool 
and1 x y = if x then if y then True else False else False

--4.8.6
and2 :: Bool -> Bool -> Bool 
and2 x y = if x == True then y else False

