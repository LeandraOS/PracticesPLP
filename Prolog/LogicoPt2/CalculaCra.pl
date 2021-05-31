/* A forma com a qual se mede o rendimento acadêmico de um aluno na nossa universidade é através do CRA.
CRA = ∑ (Ci.Ni) / CS onde:
Ci = Número de créditos correspondente à disciplina;
Ni = Nota relativa à disciplina;
CS = Número total de créditos cumpridos.

Considere que no nosso curso todas as cadeiras possuem 4 créditos.
Escreva um programa Prolog que recebe uma lista de notas, onde cada nota é a média
de uma disciplina cursada e calcula o CRA com base nisso. */

main :-
    read(X),
    cra(X, C),
    write(C),
    halt(0).
       
calculaCra([], 0).
calculaCra([A|Y], C) :-
    calculaCra(Y, C1),
    C is C1+A.


len([], 0).
len([_|Y], C) :-
    len(Y, C1),
    C is C1+1.

cra(Lista, R) :-
    calculaCra(Lista, Re),
    len(Lista, C),
    R is Re*4/(C*4).

/* ATENÇÃO: Você deve obrigatoriamente criar a regra de partida "main".
Exemplo:
Entrada:
main.
[7.5, 8, 5.2, 6, 8.5, 3, 7, 10].
Saída:
6.9 */