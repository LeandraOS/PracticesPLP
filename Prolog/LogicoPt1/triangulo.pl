/* Escreva um programa que recebe uma entrada m que indica o número de linhas do triângulo. 
Cada linha possui i asteriscos alinhados pela esquerda, onde i corresponde ao número da linha corrente. 
ATENÇÃO: Você deve obrigatoriamente criar a regra de partida "main".
 */

main :-
    read(X),
    loop(X, 1, R),
    write(R),
    halt(0).

loop(X, X, Z) :-
    linhas(X, Z).
    
loop(Entrada, Count, I) :-
    linhas(Count, Linhas),
    Count1 is Count+1,
    loop(Entrada, Count1, Linha2),
    string_concat(Linhas, '\n', Ret),
    string_concat(Ret, Linha2, I).
    
linhas(1, *).
linhas(Qtd, R) :-
    QtdMenos is Qtd-1,
    linhas(QtdMenos, R1),
    string_concat(*, R1, R).

/* Exemplo: 
Entrada:
main.
6.
Saída:
*
**
***
****
*****
****** */