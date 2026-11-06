% Actividad 4 Unidad 4: Ejemplo Tema 4.6
% Estudiante: Cristopher Axel Venegas Venegas 

% El siguiente fragmento de codigo de Prolog es acerca de las operaciones
% matematica que puede hacer el lenguaje con su sintaxis unica de Prolog.
% 1. Operadores con Números
suma(A,B,R):- R is A + B. % En esta linea se realiza una suma de A y B usando el operador "is" con R como resultado.
resta(A,B,R):- R is A - B. % En esta linea se realiza una resta de A y B usando el operador "is" con R como resultado.
multiplicacion( A, B, R):- R is A * B. % En esta linea se realiza una multiplicacion de A por B usando el operador "is" con R como resultado.
division(A,B,R):- B \= 0, R is A / B. % En esta linea se realiza una division de A entre B usando el operador "is" con R como resultado.
es_par(N):- 0 is N mod 2. % En esta linea es para saber si un numero es par con el operador "is" y usando el operador "mod".
es_impar(N):- 1 is N mod 2. % En esta linea es para saber si un numero es impar con el operador "is" y usando el operador "mod".


% El siguiente fragmento de codigo de Prolog es acerca del manejo.
% de listas y sus operaciones basicas en el lenguaje Prolog.
% 2. Operadores con Listas
cabeza([H|_], H). % Se obtiene el primer elemento de la lista, en este caso es H.
cola([_|T], T). % Se obtiene el resto de elementos de la lista, en este caso es T.

% Longitud es una regla recursiva para calcular la longitud de una lista.
longitud([], 0). % La longitud de una lista vacia es 0.
longitud([_|T], R):- longitud(T, R1), R is R1 + 1. % En caso que la lista no este vacia,
                                                   % se llama recursivamente a longitud y se suma 1 al resultado.

% Concatena es una regla recursiva para concatenar dos listas.
concatena([], L, L). % La concatenacion de una lista vacia con L es L
concatena([X|Xs], Ys, [X|Zs]):- concatena(Xs, Ys, Zs). % En caso que la primera lista no este vacia,
                                                       % se agrega el primer elemento X a la nueva lista
                                                       % y se llama recursivamente a concatena con el resto de la primera lista.

% Miembro es una regla recursiva para verificar si un elemento pertenece a la lista.
miembro(X, [X|_]). % Es miembro si X es el primer elemento de la lista.
miembro(X, [_|T]):- miembro(X, T). % En caso que X no sea el primer elemento,
                                   % se llama recursivamente a miembro con el resto de la lista.

% El siguiente fragmento de codigo de Prolog es acerca de arboles binarios
% con sus recorridos PreOrden, InOrden y PostOrden con sus respectivas inserciones.
% 3. Arboles Binarios
% arbol(Valor, Izquierda, Derecha) 

% En este fragmento de codigo se define la forma de insertar un elemento en el arbol.
insertar(X, nil, arbol(X, nil, nil)). % Si el arbol esta vacio, se crea la raiz con el valor de X.
insertar(X, arbol(R, I, D), arbol(R, NI, D)):- X < R, insertar(X, I, NI). % Si X es menor que la raiz R, 
                                                                          % se inserta en el subarbol izquierdo.
insertar(X, arbol(R, I, D), arbol(R, I, ND)):- X >= R, insertar(X, D, ND). % Si X es mayor o igual que la raiz R,
                                                                           % se inserta en el subarbol derecho.

% En esta fragmento se definen los tres tipos de recorrido de un arbol (InOrden, PreOrden, PostOrden).
% Primer recorrido: InOrden (Izquierda, Raiz, Derecha)
inorden(nil, []). % Si el arbol esta vacio, la lista resultante es vacia.
inorden(arbol(R, I, D), L):- inorden(I, LI), inorden(D, LD), concatena(LI, [R|LD], L). % Se recorre el subarbol izquierdo, 
                                                                                       % luego se agrega la raiz,
                                                                                       % y finalmente se recorre el subarbol derecho.

% Segundo recorrido: PreOrden (Raiz, Izquierda, Derecha)
preorden(nil, []). $ Si el arbol esta vacio, la lista resultante es vacia.
preorden(arbol(R, I, D), [R|L]):- preorden(I, LI), preorden(D, LD), concatena(LI ,LD, L). % Se agrega la raiz primero,
                                                                                          % luego se recorre el subarbol izquierdo,
                                                                                          % y finalmente se recorre el subarbol derecho.
% Tercer recorrido: PostOrden (Izquierda, Derecha, Raiz)
postorden(nil, []). % Si el arbol esta vacio, la lista resultante es vacia.
postorden(arbol(R, I, D), L):- postorden(I, LI), postorden(D, LD), concatena(LI, LD2, L), concatena(LD, [R], LD2). % Se recorre el subarbol izquierdo,
                                                                                                                   % luego se recorre el subarbol derecho,
                                                                                                                   % y finalmente se agrega la raiz.


% ACTIVIDAD PRACTICA
% Ejercicio 1: Suma de los elementos de una lista
% En este fragmento de codigo se define una regla recursiva para calcular la sumatoria de los elementos la lista.
suma_lista([], 0). % La suma de una lista vacia es 0.
suma_lista([X|T], R):- suma_lista(T, R1), R is X + R1. % En caso que la lista no este vacia,
                                                       % se llama recursivamente a suma_lista y 
                                                       % se suma el primer elemento X al resultado
                                                       % asi hasta llegar al ultimo elemento de la lista.

% Ejercicio 2: Encontrar el maximo en una lista
% En este fragmento de codigo se define una regla recursiva para encontrar el maximo elemento en una lista.
max_lista([X], X). % Si la lista tiene un solo elemento, ese elemento es el maximo.
max_lista([X|T], M):- max_lista(T, MT), (X > MT -> M = X ; M = MT). % En caso que la lista tenga mas de un elemento,
                                                                    % se llama recursivamente a max_lista para el resto de la lista
                                                                    % y se compara el primer elemento X con el maximo encontrado MT,
                                                                    % asignando el mayor a M.

% Ejercicio 3: Creacion de un arbol y recorrido
% En este fragmento de codigo se muestra un ejemplo de como crear un arbol binario
% insertando varios elementos y luego realizando un recorrido InOrden para obtener
% Ejemplo de consulta:
% ?- insertar(7, nil, A1), insertar(3, A1, A2), insertar(9, A2, A3),
 insertar(1, A3, A4), insertar(5, A4, A5),inorden(A5, R).