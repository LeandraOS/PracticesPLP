-- Uma organização de saúde sabe que a disseminação de uma determinada doença ocorre de uma forma simples:
-- uma pessoa contaminada transmite a doença para outras 2 num intervalo de 3 dias,
-- havendo agora 3 pessoas infectadas, que continuam o ciclo a partir deste número.

--Sabendo disso, a organização quer calcular, de forma aproximada, o número de dias que uma população de tamanho X 
--seria totalmente contaminada a partir de um número inical de pessoas doentes Y.

-- Ex: Duas pessoas doentes (Y = 2) em uma população de cem pessoas (X = 100), contaminam esta população, em sua totalidade, em 12 dias.
-- Entrada: Dois inteiros que representam o número de pessoas doentes e a população, respectivamente.
-- Saída: Uma string descrevendo a quantidade de dias que levará para que toda a população esteja contaminada.


calculaQtdDias :: Int -> Int -> Int -> Int
calculaQtdDias numPessoas populacao dia
    |numPessoas >= populacao = dia
    |otherwise = calculaQtdDias (numPessoas * 3) populacao (dia + 3)
    
main :: IO()
main = do
    nPessoas <- getLine
    p <- getLine
    let numPessoas = read nPessoas :: Int
    let populacao = read p :: Int
    let dias = calculaQtdDias numPessoas populacao 0
    print(show dias ++ " dias")


--Teste: 

--Entrada:

-- 2

-- 20

-- Saída:

-- 9 dias