n =  a `div` length xs
  where a = 10
        xs = [1,2,3,4,5]

--last xs = head(reverse xs)

--last xs = reverse xs !! (length xs - 1)

--last xs = head (drop(length xs) xs)

last xs = xs !! (length xs - 1)

--last xs = head (drop (length xs - 1) xs)

--init xs = (tail (reverse xs))

--init xs = drop (length xs - 1) xs

--init xs = take (length xs - 1) (tail xs)

--init xs = reverse (tail (reverse xs))

init xs = reverse (tail  xs)

--init xs = take (length xs) xs

qsort [] = []
qsort(x : xs) = qsort larger ++ [x] ++ qsort smaller
  where smaller = [a | a <- xs, a <= x]
        larger = [b | b <- xs, b > x]
