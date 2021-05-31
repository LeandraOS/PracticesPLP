% forma mais explicita
pertence(X, Y) :- Y = [X | _].
pertence(X, Y) :- Y = [_| Z], pertence(X, Z).

% forma mais alto nível
pertence2(X, [X| _]).
pertence2(X, [_|Y]) :- pertence(X, Y).

% calcular o tamanho de uma lista

len([], 0).
len([_|Y], C) :-
     len(Y, C1), C is C1 + 1.

% definir um procedimento que converta os elemnteos de uma lista em seus valores absolutos

absoluto(X, R):- X < 0, R is X * -1.
absoluto(X, X).

converte([], []).
converte([X | L1], [Y | L2]) :- absoluto(X, Y), converte(L1, L2).

%definir um procedimento para encontrar o ultimo elemento de uma lista

ultimo([X | []], X).
ultimo([_|Y], Z) :- ultimo(Y, Z).

% definir o procedimento que remove um elemento de uma lista.