criptografa :: String -> String -> String -> String 
criptografa "" letra letraNova = ""
criptografa (h:t) (x:xs) letraNova  
    |h == x = letraNova ++ criptografa t (x:xs) letraNova
    |otherwise = [h] ++ criptografa t (x:xs) letraNova 

main :: IO()
main = do
    frase <- getLine
    letra <- getLine 
    letraNova <- getLine
    let saida = criptografa frase letra letraNova
    print saida