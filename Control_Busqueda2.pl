ruta(a,b).
ruta(b,c).
ruta(b,d).
ruta(c,e).
ruta(d,e).

encuentra(X, Y) :- ruta(X,Y).
encuentra(X, Y) :- ruta(X,Z), encuentra(Z,Y).

% Consulta
% ?- encuentra(a,e).
% ?- encuentra(b,Y).