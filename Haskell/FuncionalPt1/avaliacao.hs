-- Ana gosta muito de correr e pedalar e ela sempre faz auto avaliações do seu desenvolvimento durante essas atividades.
-- Os limites de Ana correndo são de 10km e pedalando de 24km, se ela ultrapassa esses limites ela considera o desempenho "Desempenho excelente",
-- se executa entre 5km e 10km correndo ou entre 15km e 24km pedalando os considera "Desempenho medio", caso seja abaixo ela os considera "Baixo desempenho". 
-- Mas se em qualquer distância ela ultrapassar 12km/h correndo ou 20km/h pedalando ela já considera "Desempenho excelente".

--Escreva um programa que recebe de Ana a atividade executada (1 - correr, 2 - pedalar), quantos km foram executados e em qual quantidade de horas.

verificaDesempenho :: Int -> Int -> Float -> String
verificaDesempenho atividade km tempo
    |atividade == 1 = desempenhoCorrida km velocidade
    |atividade == 2 = desempenhoPedal km velocidade
    
    where velocidade = fromIntegral km / tempo

desempenhoPedal :: Int -> Float -> String
desempenhoPedal km velocidade
    |velocidade > 20 = "Desempenho excelente"
    |km > 24 = "Desempenho excelente"
    |km >=15 && km <= 24 = "Desempenho medio"
    |otherwise = "Baixo desempenho"
    
desempenhoCorrida :: Int -> Float -> String
desempenhoCorrida km velocidade
    |velocidade > 12 = "Desempenho excelente"
    |km > 10 = "Desempenho excelente"
    |km >= 5 && km <= 10 = "Desempenho medio"
    |otherwise = "Baixo desempenho"
    
main :: IO()
main = do
    atv <- getLine
    k <- getLine
    t <- getLine
    let atividade = read atv :: Int
    let km = read k :: Int
    let tempo = read t :: Float
    let saida = verificaDesempenho atividade km tempo 
    print saida

--Teste Exemplo:

--Entradas:

-- 1

-- 5

-- 0.5

-- Saída: 

-- Desempenho médio
