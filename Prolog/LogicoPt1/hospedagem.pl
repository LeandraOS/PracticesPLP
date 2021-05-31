/* Jonas e Amanda querem aproveitar sua lua de mel nas Bahamas e começam a pesquisar qual hotél eles pretendem ficar.
Ambos decidiram alguns requisitos para escolher onde ficar:

- O hotel não pode estar lotado (quando sua capacidade é >= 80%)
- Eles pretendem passar 4 dias (ambos vão ficar no mesmo quarto)
- Precisa ter café e almoço incluso
- Precisa ter vista para o mar

Eles encontraram um site contendo descrições da maioria dos hotéis da região. As informações são as seguintes:

Nome            | Capacidade | Qtd Hóspedes | Diária | Vista p/ mar | Café/Almoço Incl.|
----------------|------------|--------------|--------|--------------|------------------|
Grand Hyatt     | 5000       | 4520         | 660    | true         | true             |
Holiday Inn     | 2000       | 250          | 400    | true         | true             |
Breezes         | 300        | 60           | 300    | false        | false            |
Warwick Paradise| 245        | 42           | 150    | true         | true             |
Coral Harbour   | 75         | 27           | 120    | false        | true             |
Club Peace      | 159        | 89           | 70     | true         | true             |
Tingum          | 625        | 245          | 90     | false        | true             |
Abaco Beach     | 150        | 70           | 150     | true         | true             |
Sandyport       | 700        | 89           | 40    | true         | true             |
---------------------------------------------------------------------------------------|

Desenvolva um programa que recebe quanto de verba Jonas e Amanda possuem para passar os 4 dias e retorne 
o primeiro hotel (caso exista) que satisfaça os requisitos. Considere a busca sempre começando sempre do inicio da lista

ATENÇÃO: Você deve obrigatoriamente criar a regra de partida "main".
 */

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

/* A unificação é uma forma de ligar os conteúdos das variáveis e pode ser visto como um tipo de atribuição.
Unificação é o mecanismo usado para determinar se existe uma maneira de instanciar as varáveis de dois predicados 
de modo a torná-los iguais.
 */

/* Exemplo:

Entrada:
main.
500.

Saída:
Club Peace
 */