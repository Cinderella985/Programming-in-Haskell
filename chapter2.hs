--2.7.4
last0 :: [a] -> a
last0 xs = xs !! (length xs - 1)

last1 :: [a] -> a
last1 xs = head(reverse xs)

--2.7.5
init0 :: [a] -> [a]
init0 xs = take(length xs -1) xs

init1 :: [a] -> [a]
init1 xs = reverse(tail(reverse xs))


