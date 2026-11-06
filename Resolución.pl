%Hechos
animal(perro).
animal(gato).
tiene_pelo(perro).
tiene_pelo(gato).

%Regla
mamifero(X) :- animal(X), tiene_pelo(X).