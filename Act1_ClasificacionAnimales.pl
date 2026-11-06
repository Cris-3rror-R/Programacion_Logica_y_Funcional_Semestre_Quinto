# Programa Prolog para Clasificar Animales por vertebrados e invertebrados
# Venegas Venegas Cristopher Axel
%Hechos
# Clasificacion de los grupos de animales
mamifero(elefante).
mamifero(antilope).
mamifero(tapic).

pez(atun).
pez(salmon).
pez(barracuda).

reptil(cocodrilo).
reptil(iguana).
reptil(serpiente).

ave(aguila).
ave(pelicano).
ave(cóndor).

anfibio(rana).
anfibio(salamandra).
anfibio(triton).

insecto(mariposa).
insecto(mantis).
insecto(luciernaga).

molusco(calamar).
molusco(caracol).
molusco(pulpo).


%Reglas
vertebrado(X) :- mamifero(X).
vertebrado(X) :- pez(X).
vertebrado(X) :- reptil(X).
vertebrado(X) :- ave(X).
vertebrado(X) :- anfibio(X).

invertebrado(X) :- insecto(X).
invertebrado(X) :- molusco(X).