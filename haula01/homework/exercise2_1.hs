module Exercicio01 where

elevadoOnze :: Int -> [Int]
elevadoOnze n = [11 ^ x | x <- [0 .. n]]
 
avoidMult4 :: Int -> [Int]
avoidMult4 n = [x | x <- [1 .. n], mod x 4 /= 0]
