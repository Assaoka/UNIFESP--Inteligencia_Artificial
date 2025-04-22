% Aprendendo Regras
pai(joão, maria).
pai(adão, abel).
pai(adão, cain).
pai(adão, seth).
pai(seth, enos).
filho(X, Y):- pai(Y, X).
avo(X, Y):- pai(X, Z), pai(Z, Y).
neto(X, Y):- avo(Y, X).
irmão(X, Y):- pai(Z, X), pai(Z, Y), X \= Y.


humano(joão).
humano(adão).
humano(X):- pai(Y, X), humano(Y).
    
mortal(X):- humano(X).

% Fatorial
fat(0, 1).
fat(N, R):-
    N > 0,
    M is N - 1,
    fat(M, S),
    R is N * S.

% Salve o arquivo com a extensão .pro para evitar conflito com o Perl.