{- Digamos que você está construindo um compilador e você precisa implementar a função que verifica se todas as chaves que forem abertas 
durante o código foram fechadas antes da finalização dele, e que elas foram fechadas na ordem certa. O conjunto de chaves `{{}` não é 
correto pois está faltando um }, já o conjunto '{}{' também não está uma vez que tem um { sem ser fechado. 
Escreva um programa que recebe uma string representando as chaves e retorne se trata-se de um programa válido ou não. -}
 
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

{-  Entrada:
{{{}}

Saída:
O programa {{{}} nao eh valido -}