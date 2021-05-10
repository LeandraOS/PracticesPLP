diaria("Holiday Inn", 400).
diaria("Warwick Paradise", 150).
diaria("Club Peace", 70).
diaria("Abaco Beach", 150).
diaria("Sandyport", 40).

orcamento(Valor, R) :-
    diaria(R, Diaria),
    Valor >= Diaria * 4.


main :- 
    read(X),
    orcamento(X, R),
    write(R), halt(0).