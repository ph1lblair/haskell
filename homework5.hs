--import Prelude hiding((^))

--m ^ 0 = 1
--m ^ n = m * m ^ (n - 1)
--m ^ n = m * (^) m (n - 1)

--import Prelude hiding(and)
--and [] = True
--and (b : bs) = b && and bs

--and (b : bs)
--  | b = and bs
--  | otherwise = False

--import Prelude hiding(concat)
--concat [] = []
--concat (xs : xss) = xs ++ concat xss

--import Prelude hiding(replicate)
--replicate 0 _ = []
--replicate n x = x : replicate (n-1) x 

--import Prelude hiding((!!))
--(x : _) !! 0 = x
--(_ : xs) !! n = xs !! (n-1)

--import Prelude hiding(elem)
--elem _ [] = False
--elem x (y : ys)
--  | x == y = True
--  | otherwise = elem x ys

merge [] ys = ys
merge xs [] = xs
merge (x : xs) (y : ys)
  = if x <= y then x : merge xs (y : ys) else y : merge (x : xs) ys

halve xs = splitAt (length xs `div` 2) xs

msort []= []
msort [x] = [x]
--msort xs = merge (msort ys) (msort zs)
--  where (ys, zs) = halve xs

