module Aula1 where

-- LIST COMPREENSHIONS

-- [EXPR | LISTA DE ITERACAO, FILTRO, FILTRO, ... ]
todosPares :: Int -> [Int]
todosPares n = [x | x <- [0 .. n], mod x 2 == 0]

wq n = [(-1)*x | x<-[0 .. n], x > 3, mod x 2 == 0]

d12 :: Int -> [Int]
d12 n = [2*x | x<-[0 .. n], x > 12, x < 142]

-- O DOBRO DE TODOS OS NUMEROS DE 0 a N, MAIORES
-- QUE 12 E MENORES QUE 142.
