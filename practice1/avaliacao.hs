verificaDesempenho :: Int -> Int -> Float -> String
verificaDesempenho atividade km tempo
    |atividade == 1 = desempenhoCorrida km kmTotal
    |atividade == 2 = desempenhoPedal km kmTotal
    
    where kmTotal = fromIntegral km / tempo

desempenhoPedal :: Int -> Float -> String
desempenhoPedal km kmTotal
    |km > 20 = "Desempenho excelente"
    |kmTotal <= 12 && kmTotal < 20 = "Desempenho excelente"
    |kmTotal >=15 && kmTotal <= 24 = "Desempenho medio"
    |otherwise = "Baixo desempenho"
    
desempenhoCorrida :: Int -> Float -> String
desempenhoCorrida km kmTotal
    |km > 12 = "Desempenho excelente"
    |kmTotal > 12 && kmTotal < 20 = "Desempenho excelente"
    |kmTotal >= 5 && kmTotal <= 10 = "Desempenho medio"
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