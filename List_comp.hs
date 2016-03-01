module List_comp where

{-
a)[0,3,6,9,12,15]
-}


listMult3 :: Int -> [Int]
listMult3 15 = [x | x <- [0..15], mod x 3 == 0]

{-
b) multiples of 2 e 3 between 0 e 20
-}

condMult :: Int -> [Int]
condMult x = [x | x <- [0..20], mod x 2 == 0 && mod x 3 == 0]

{-
c) [[1],[2],[3],[4],[5]]
-}

listList :: Int -> [[Int]]
listList n = [[x] | x <- [1..n]]
