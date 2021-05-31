%Você é um jovem aventureiro e está prestes a enfrentar uma dungeon cheia de monstros. A dungeon é um longo
%corredor e por isso você só consegue lutar com um monstro por vez. Os monstros que você vai encontrar, na sequência, são:

%Monstro          | Vida   | Ataque
%---------------------------------
%Orc Desnutrido   | 005    | 003
%Goblin Gigante   | 018    | 007
%Serpente Venenosa| 008    | 004
%Humano Corrompido| 016    | 008
%Anão Gigante     | 020    | 010
%---------------------------------
%Toda vez que você ataca e não mata o monstro, ele contra-ataca. Você sempre começa atacando.

%Desenvolva um programa Prolog que, recebe sua vida e o dano do seu ataque, e retorna "Sobrevive" se você consegue derrotar todos os monstros
%ou "Morre" se você é derrotado pelo caminho.

%ATENÇÃO: Você deve obrigatoriamente criar a regra de partida "main".
%Exemplo:
%Entradas:
%main. 
%20.
%20.
%Saída:
%"Sobrevive"


main:- 
    read(Vida),
    read(Ataque),
    loop(Vida, Ataque, R),
    test(R, Saida),
    write(Saida), halt(0).
    
    
rpg(V, A, Vm, Am, R):-
Vm =< A, R = V;
V =< Am, R = 0;
P is Vm - A, Vn is V - Am, rpg(Vn, A, P, Am, R).

loop(Vi, At, Ret):-
rpg(Vi, At, 005, 003, R),
rpg(R, At, 018, 007, Retu),
rpg(Retu, At, 008, 004, Retur),
rpg(Retur, At, 016, 008, Return),
rpg(Return, At, 020, 010, Ret).

test(0, 'Morre').
test(_, 'Sobrevive').