-- NUMERO PERFEITO EH NUMERO QUE EH A SOMA
-- DE SEUS MULTIPLOS
-- EX: 6 = 1 + 2 + 3

obterMultiplos :: Int -> [Int]
obterMultiplos n = [ x | x<- [1 .. (n-1)], mod n x == 0]

ehPerfeito :: Int -> Bool
ehPerfeito k = k == (sum (obterMultiplos k))

