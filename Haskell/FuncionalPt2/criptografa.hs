{- Guilherme deseja uma ferramenta para encriptar mensagens. Ele percebeu que existem várias ferramentas que fazem isso com um algoritmo de encriptação pré definido. 
O problema é que ele gostaria de poder encriptar cada vez com um critério diferente, e não encontra uma ferramenta que faça isso.
Ajude a Guilherme implementando um programa que encripte uma string de maneira mais genérica.
Ao executar, o programa recebe a String, o caractere a ser substituído e o caractere que o irá substituir. 
Em seguida imprime a String modificada.
 -}
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

{- Exemplo:

Entrada:

Meu exemplo de frase
e
3

Saída:
M3u 3x3mplo d3 fras3 -}