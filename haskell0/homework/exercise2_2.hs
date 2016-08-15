module Exercicio02 where

-- ###############1############################

strangeSeq :: [[Char]]
strangeSeq = ["A" ++ [c] ++ "BB" | c <- ['a' .. 'g']]

-- ###############2############################

-- termo 3 ∗ x + 2 
-- filter mod termo 7 == 0

divisibleBy7 n = mod n 7 == 0

tripleXAvoid7 :: Int -> [Int]
tripleXAvoid7 n = [x * 3 + 2 | x <- [1 .. n], not(divisibleBy7(x * 3 + 2))]

-- ##############3#############################

base2 :: Float -> [Float]
base2 n = [1.0 * 2 ** (-x) | x <- [0 .. n]]


main = putStrLn (show(base2 10)) 
