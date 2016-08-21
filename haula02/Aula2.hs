module Aula2 where

-- O DiaSemana eh um data constructor ou simplesmente
-- tipo


data DiaSemana = Segunda | Terca | Quarta | Quinta |
                 Sexta | Sabado | Domingo
                 deriving (Show, Enum, Eq, Ord)

data DayWeek = Monday | Tusday | Wednesday |
               Thursday | Friday | Saturday | Sunday
               deriving (Show)

-- ao lado direito temos 7 value constructrs, ou simples 
-- 7 valores

-- Pattern Matching: Na entrada da função é possivel substituir uma variavel por um Value Constuctor  
-- fixo (Valor Fixo). O uso do '_' significa que podemos ignorar o uso de uma variávelb

agenda :: DiaSemana -> String
agenda Sabado = "Dia de balada"
agenda Domingo = "Dia de ressaca"
agenda _ = "Dia de FATEC"


numDia :: Int -> DiaSemana
numDia 1 = Segunda
numDia 2 = Terca
numDia 3 = Quarta
numDia 4 = Quinta
numDia 5 = Sexta
numDia 6 = Sabado
numDia _ = Domingo

traduzirPT :: DayWeek -> DiaSemana
traduzirPT Monday = Segunda
traduzirPT Tusday = Terca
traduzirPT Wednesday = Quarta
traduzirPT Thursday = Quinta
traduzirPT Friday = Sexta
traduzirPT Saturday = Sabado
traduzirPT Sunday = Domingo

traduzirEN :: DiaSemana -> DayWeek
traduzirEN Segunda = Monday 

remunerar :: DiaSemana -> Double -> Double
remunerar Sabado x = x * 1.5
remunerar Domingo x = x * 2
remunerar _ x = x 



