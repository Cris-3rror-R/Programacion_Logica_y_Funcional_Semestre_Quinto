%Unificacion
%Hechos
padre(manuel, ana).     %manuel es padre de ana
padre(juan, jose).    %juan es padre de jose
padre(manuel, juliana).    %manuel es padre de juliana

%Regla:
abuelo(X, Y) :- padre(X, Z), padre(Z, Y).   %X es abuelo de Y si X es padre de Z y Z es padre de Y

%Regla: 
hermano(X, Y) :- padre(Z, X), padre(Z, Y), X \= Y.  %X es hermano de Y si Z es padre de X y Z es padre de Y, y X no es igual a Y