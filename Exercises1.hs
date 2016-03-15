module Exercises1 where

--0.0)

data Pergunta = Sim | Nao deriving Show

pergNum ::Pergunta -> Int
pergNum Nao = 0
pergNum Sim = 1

--0.1)

listPerg ::[Pergunta] -> [Int]
listPerg qs = [pergNum q | q <- qs] 


--0.2)

and' ::Pergunta -> Pergunta -> Pergunta
and' Sim Sim = Sim
and' _ _  = Nao

--0.3)

or' ::Pergunta -> Pergunta -> Pergunta
or' Nao Nao = Nao
or' _ _ = Sim

--0.4

not' ::Pergunta -> Pergunta
not' Nao = Sim
not' _ = Nao

--1.0

list1 ::[Int]
list1 = [11 ^ n | n<-[0..6]]

list2 ::[Int]
list2 = [n | n <- [1..40], mod n 4 /= 0]

--1.1

data Temperatura = Celcius | Farenheit | Kelvin
converterCelsius :: Double -> Temperatura -> Double
converterCelsius k Kelvin = k - 273

converterKelvin :: Double -> Temperatura -> Double
converterKelvin f Farenheit = (f + 459.67)/1.8

converterFarenheit :: Double -> Temperatura -> Double
converterFarenheit c Celcius = c * 1.8 + 32

 




