module Exercicio01 where

listinha :: [Int]
listinha = [x | x <- [5 .. 15]]

listaImpar :: [Int]
listaImpar = [x | x <- [5,7 .. 15]]

listaImparMod :: [Int]
listaImparMod = [x | x <- [5 .. 15], mod x 2 /= 0]

listaImparLista :: [Int]
listaImparLista = [x | x <- listinha, mod x 2 /=0]
