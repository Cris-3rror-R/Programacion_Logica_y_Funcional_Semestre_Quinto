% Consulta de una Base de Clausulas

% Hechos
padre(juan, maria).
padre(juan, jose).
padre(carlos, juan).

madre(ana, maria).
madre(ana, jose).

% Regla: abuelo(X, Y) es cierto si X es padre de Z y Z es padre de Y
abuelo(X, Y) :- padre(X, Z), padre(Z, Y).

% Regla: hijo(X, Y) es cierto si Y es padre o madre de X
hijo(X, Y) :- padre(Y, X).
hijo(X, Y) :- madre(Y, X).

% Ejemplos de consultas
% ?- padre(juan, maria).
% ?- padre(juan,X).
% ?- padre(juan,X), madre(ana,X).
% ?- abuelo(carlos, Y).
% ?- hijo(maria, ana).



