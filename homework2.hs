--halve xs = (take n xs, drop n xs)
--  where n = length xs `div` 2
--halve xs = splitAt (length xs `div` 2) xs
--halve xs = (take (n `div` 2) xs, drop (n `div` 2) xs)
--  where n = length xs
--halve xs = splitAt (div (length xs) 2) xs

--safetail xs = if null xs then [] else tail xs

--safetail [] = []
--safetail (_ : xs) = xs

--safetail xs
--  | null xs = []
--  | otherwise = tail xs

--safetail [] = []
--safetail xs = tail xs

--safetail
--  = \ xs ->
--    case xs of
--      [] -> []
--      (_ : xs) -> xs

--import Prelude hiding((||))

--False || False = False
--_ || _ = True

--False || b  = b
--True || _ = True

--b || c
--  | b == c = b
--  | otherwise = True

--b || False = b
--_ || True = True

--b || c
--  | b == c = c
--  | otherwise = True

--False || False = False
--False || True = True
--True || False = True
--True || True = True

import Prelude hiding((&&))

--True && True = True 
--_ && _ = False

--a && b = if a then if b then True else False else False

--a && b = if a then b else False

--a && b = if b then a else False

--mult = \x -> (\y -> (\z -> x * y * z)) 

remove n xs = take n xs ++ drop (n + 1) xs

funct x xs = take (x + 1) xs ++ drop x xs

