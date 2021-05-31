% definição dos fatos 
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

% A unificação é uma forma de ligar os conteúdos das variáveis e pode ser visto como um tipo de atribuição.
% Unificação é o mecanismo usado para determinar se existe uma maneira de instanciar as varáveis de dois predicados 
% de modo a torná-los iguais.
