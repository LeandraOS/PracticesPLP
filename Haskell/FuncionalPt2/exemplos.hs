
main :: IO()
main = do
    l <- getLine
    frase <- getLine
    let saida = removeNonUppercase frase 
    print saida

removeNonUppercase :: String -> String 
removeNonUppercase "" = ""
removeNonUppercase (h:t) = if not(upper h) then removeNonUppercase t -- se h não é maiusculo eu coloco pra frente
                            else [h] ++ removeNonUppercase t 

upper :: Char -> Bool 
upper c = find c ['A'.. 'Z']

find :: Char -> [Char] -> Bool
find c [] = False 
find c (h:t) = if c == h then True      
               else find c t 

sumList :: [Int] -> Int 
sumList [] = 0
sumList(h:t) = h + sumList t

