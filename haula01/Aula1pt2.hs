module Aula1pt2 where

listaABC :: [Char]
listaABC = ['A' .. 'z']

listnum :: [Int]
listnum = [0 .. 100]

listaTabuada :: [Int] 
listaTabuada = [3 * x | x <- [1 .. 10], x /= 5 ]  -- List Comprehention

soma :: Int -> Int -> Int -> Int
soma x y z = x + y

lista :: [Int]
lista = [x + 10 | x <- [0 .. 30], or [x > 5, x < 7]]

lista2 :: [Int]
lista2 = [x + 10 | x <- [0 .. 7], x /= 3, x /= 7]

listaTexto :: [String]
listaTexto = ["Ola" ++ x | x <- ["Hask", "PHP", "Java"], length x > 3]

listaMod :: [Int]
listaMod = [x | x <- [0..100], mod x 6 == 0]

ehPrimo :: Int -> Bool
ehPrimo 1 = False
ehPrimo n = length([x | x <- [2..(n - 1)], mod n x == 0]) == 0

listaPrimo :: [Int]
listaPrimo = [x | x <- [2 .. 100], ehPrimo x]

testeLista :: [Int]
testeLista = [x | x <- [0..10], x == 5]