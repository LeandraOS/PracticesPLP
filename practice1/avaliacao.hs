
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

-