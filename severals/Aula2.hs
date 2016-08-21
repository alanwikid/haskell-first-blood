module Aula2 where


-- o Dia eh chamado de Data Constructor  (Tipo)
-- Os valores Segunda, Terca ... são chamados de value constructors


-- O Pattern Matching deixa o paremetro
-- da funcao em acordo com os value constructor
-- do tipo de entrada.


data Dia = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo deriving Show

data Day = Mon | Tue | Wed | Thu | Fri | Sat | Sun deriving Show

diaDeBalada :: Dia -> Bool
diaDeBalada Sexta = True
diaDeBalada Sabado = True
diaDeBalada _ = False

{-
 Faça a função numDia que converte Dia em Int.

-}

numDia :: Dia -> Int
numDia Domingo = 1
numDia Segunda = 2
numDia Terca = 3
numDia Quarta = 4
numDia Quinta = 5
numDia Sexta = 6
numDia Sabado = 7

{-
1)Um trabalhador ganha por hora. Aos domingos o valor da hora ganha eh sempre o dobro. 
Aos sabados 75% a mais e no resto dos dias nao ha acrescimo. Faca uma funcao que receba o Dia trabalhado e o valor hora e esta deve retornar o calculo da hora atualizado
UFSC Encontro
-}

valorHora :: Dia -> Double -> Double
valorHora Domingo v =  2 * v
valorHora Sabado v = 1.75 * v
valorHora _ v = v


{-
2)Faça o tipo Day que contenha os dias em ingles como value constructors. Crie as funcções traduzirIP
e traduzir os dias de ingles para portugues e de portugues para ingles de acordo com os value constructors.
-}

traduzirIP :: Day -> Dia
traduzirIP Mon = Segunda
traduzirIP Tue = Terca
traduzirIP Wed = Quarta
traduzirIP Thu = Quinta
traduzirIP Fri = Sexta
traduzirIP Sat = Sabado
traduzirIP Sun = Domingo
{-
reverse (show (traduzirIP Thu))
reverse . show . traduzirIP $ Thu
(reverse . show . traduzirIP) Thu

-}
somar :: (Int, Int) -> Int
somar x = fst x + snd x

somar' :: (Int, Int) -> Int
somar' (a,_) = a + a


teste :: String -> String
teste ('F':'A':_:[]) = "QQ Coisa"
{-teste (x:_:xs) = x:xs
teste (x:y:[]) = [x] ++ [y]-}
teste _ = "FODA-SE"


{-
Faca uma funcao que troque a segunda pela quarta letra de uma palavra passada
via parametro .
Caso nao seja possivel, exiba uma menssagem de erro
-}

troca :: String -> String
troca (a:b:c:d:xs) = [a] ++ [d] ++ [c] ++ [b] 
