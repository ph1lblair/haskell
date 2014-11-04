import Data.Char

sum100 = sum [x ^ 2 | x <- [1 .. 100]]

replicate n a = [a | _ <- [1 .. n]]

pyths n
  = [(x, y, z) | x <- [1 .. n], y <- [1 .. n], z <- [1 .. n],
     x ^ 2 + y ^ 2 == z ^ 2] 

factors n =
  [ x | x <- [1 .. n], n `mod` x == 0]

perfects n = [ x | x <- [1 .. n], isPerfect x]
  where isPerfect num = sum (init (factors num)) == num

--concat [[(x, y) | y <- [4, 5, 6]] | x <- [1, 2, 3]]

find k t = [v | (k', v) <- t, k ==k']

positions x xs = find x (zip xs [0 .. n])
  where n = length xs - 1

--scalarproduct xs ys = sum [x * y | (x,y) <- xs `zip` ys]

divides x y = x `mod` y == 0

divisors x = [d | d <- [1 .. x], x `divides` d]

let2int c 
  | isLower c = ord c - ord 'a'
  | otherwise = ord c - ord 'A'

int2lowlet n = chr (ord 'a' + n)

int2uplet n = chr (ord 'A' + n)

shift n c
  | isLower c = int2lowlet ((let2int c + n) `mod` 26)
  | isUpper c  = int2uplet ((let2int c + n) `mod` 26)
  | otherwise = c

encode n xs = [shift n x | x <- xs]
 
