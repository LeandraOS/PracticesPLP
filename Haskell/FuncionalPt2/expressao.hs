-- 
verificaExpressao :: String -> String -> Bool 
verificaExpressao "" "" = True
verificaExpressao "" _ = False  
verificaExpressao (cabeca: cauda) ""  
    |cabeca == '{' = verificaExpressao cauda [cabeca] 
    |otherwise = False 

verificaExpressao (cabeca:cauda) (h:t) 

    |cabeca == '{' = verificaExpressao cauda ([cabeca] ++ (h:t))
    |cabeca == '}' && h == '{' = verificaExpressao cauda t
    |otherwise = False

saida:: String -> Bool -> String 
saida expr False = "O programa " ++ expr ++ " nao eh valido"
saida expr True = "O programa " ++ expr ++ " eh valido"

main:: IO()
main = do
    expressao <- getLine
    let resultado = verificaExpressao expressao "" 
    print $ saida expressao resultado 
    -- string oficial
    -- string auxiliar