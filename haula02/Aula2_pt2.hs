module Aula2 where

data Cor = Azul | Vermelho | Verde | Preto |
           Branco  deriving Show

converter :: Cor -> (Int, Int, Int)
converter Azul = (0, 0, 25)
converter Verde = (0, 255, 255)
converter Vermelho = (255, 0, 0)
converter Preto = (0, 0, 0)
converter Branco = (255, 255, 255)

misturar :: (Cor, Cor) -> Cor
misturar (Azul, Vermelho) = Verde
misturar (_, Preto) = Preto
misturar (Preto, _) = Preto
misturar (x, Branco) = x
misturar (Branco, x) = x
misturar (_, _) = Azul

somar1 :: Int -> Int -> Int
somar1 x y = x + y


somar2 :: (Int, Int) -> Int
somar2 (x, y) = x + y

trdInt :: (Int, Int, Int) -> Int
trdInt (_, _, z) = z


-- Faça uma função que receba uma Tupla da forma (Int, Int, Int, Int) e devolva uma
tupla com o dobro na primeira coordenada, o triplo na segunda, o quadruplo na terceira
e o quintuplo na ultima

mdtqCoord :: (Int, Int, Int, Int) -> (Int, Int, Int, Int)
mdtqCoor x

--Freemonad



 
