module ListComp where

dobroLista ::[Int] -> [Int]
dobroLista xs = [2 * x |  x <- xs]
