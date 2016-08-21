module Aula0 where

listaPrimos :: Int -> [Int]
listaPrimos k = [x | x<- [2 .. k], primo x]

divisores :: Int -> [Int]
divisores n = [x | x<- [1 .. n-1], mod n x == 0]

primo :: Int -> Bool
primo n = length ( divisores n ) == 1