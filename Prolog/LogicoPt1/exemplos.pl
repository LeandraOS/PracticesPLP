% Incrementar um número inteiro

acc(X, R) :- R is X + 1.

main:- 
    read(X),
    acc(X, Y),
    write(Y).

% Programa que lê o nome e notas de um aluno e verifica sua situação (APROVADO, REPROVADO, ou NA FINAL)

leEntradas:- 
    write('Digite o Nome:'),
    read(Nome), 
    write('Digite a primeira Nota: '), 
    read(N1),
    write('Digite a segunda Nota: '), 
    read(N2),
    write('Digite a terceira Nota: '), 
    read(N3),
    situacao(Nome, N1, N2, N3, R),
    write(R).

situacao(Nome, N1, N2, N3, R) :- M is (N1 + N2 + N3)/3,
    (M >= 7 -> atom_concat(Nome, 'está APROVADO.', R);
    M < 4 -> atom_concat(Nome, 'está REPROVADO', R);
    atom_concat(Nome, 'está na FINAL.', R)).

%Crie um programa que recebe um inteiro N via entrada padrão e, 
%se o número for menor que 10, escreve todos os números [N...1]
    
start:-
    read(X), 
    X < 10, 
    loop(X).

loop(0).
loop(N):-
    N > 0, 
    write('Number:'), 
    write(N), 
    nl, 
    M is N - 1, 
    loop(M).
