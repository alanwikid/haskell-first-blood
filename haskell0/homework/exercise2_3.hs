module Exercicio3 where

nineNine :: Int -> [Int]
nineNine n = [1 + (x - 1)*9 | x <- [1 .. n]]

nineNineI :: Int -> [Int]
nineNineI n = [x | x <- [1,10 .. n]]
