#Venegas Venegas Cristopher Axel 5 ISC
madre(maria,juan).

gato(bola de nieve).
gato(misifus).
gato(wilson).

padre(carlos,juan).
padre(carlos,ana).

mamifero(X):-gato(X).
cuidar(X,Y) :- madre(X,Y).
hermano(X,Y) :- padre(Z,X), padre(Z,Y), X \= Y.
hermano(X,Y) :- madre(Z,X), madre(Z,Y), X \= Y.
