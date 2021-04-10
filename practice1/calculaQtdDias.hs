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