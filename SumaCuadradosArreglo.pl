% suma_cuadrados(+Lista, -Resultado)
% maplist - predicado de orden superior incluido en swi-Prolog
% su forma es maplist(Predicado, ListaEntrada, ListaSalida)
% aplica el predicado Pred a cada elemento de la ListaEntrada generando
% los elementos de la ListaSalida
% maplist(cuadrado,Lista,Cuadrados) aplica "cuadrado" a cada elemento
% sum_list - predicado de la libreria de estandar
% sum_list(Lista, Suma) recorre la Lista y calcula la Suma Total

suma_cuadrados(Lista,Resultado) :-
    maplist(cuadrado,Lista,Cuadrados),
    sumlist(Cuadrados,Resultado).

% predicado cuadrado
% recibe un numero y devuelve en Y su cuadrado
cuadrado(X,Y) :- Y is X*X.