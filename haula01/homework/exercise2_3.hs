module Exercicio3 where

nineNine :: Int -> [Int]
nineNine n = [1 + (x - 1)*9 | x <- [1 .. n]]

nineNineI :: Int -> [Int]
nineNineI n = [x | x <- [1,10 .. n]]

doisEmDois :: [Int]
doisEmDois = [x | x <- [2,4 .. 30], x/=6, x/=14, x/=20, x/=26]


listaCarac :: String
listaCarac = [x | x <- ['@' .. 'L'], x /= 'B', x /= 'F', x /= 'H', x /= 'I', x /= 'K' ]


tamString :: String -> Bool
tamString x = even(length(x))

-- reversoString :: [String] -> [String]
-- reversoString [x] = [reverse x | x <- [1 .. x]]

revComp :: [String] -> [String]
revComp [] = []
revComp (x:xs) = reverse x : revComp xs


tamStringOdd :: [String] -> [Int]
tamStringOdd [] = []
tamStringOdd (x:xs) = length x :  tamString xs
