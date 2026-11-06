% Actividad 5: Manipulacion terminos
% Estudiante: Cristopher Axel Venegas Venegas

% 1.Descomponer
% Esta regla descomponer un termino y lo convierte en una lista.
descomponer(Termino) :-                        % La regla se llama descomponer y recibe un termino como argumento.
    Termino =.. Lista,                         % El operador =..(univ) convierte un termino a una lista.
    write('Como lista: '), writeln(Lista).     % Imprime el termino convertido en lista.

% 2.Reconstruir
% Esta regla hace lo contrario a la anterior
reconstruir(Lista) :-                          % La regla se llama reconstruir y recibe una lista como argumento.  
    T =..Lista,                                % El operador =..(univ) convierte una lista a un termino, toma el                   
    write('Termino reconstruido: '),           % primer elemento de la lista como functor y los demas como argumentos.
    writeln(T).                                % Imprime la lista convertido en lista.

% 3.Info 
% Esta regla obtiene la informacion de un termino es decir su functor(el nombre del fuctor) y aridad(cantidad de argumentos).
info(Term) :-                                  % La regla se llama info y recibe un termino como argumento.
    functor(Term,F,A),                         % La funcion functor obtiene el functor y la aridad del termino.
    format('Functor: ~w, Aridad: ~w~n',[F,A]). % Imprime el functor y la aridad del termino.

%Consultas
%? - descomponer(curso(logica,3)).
%? - reconstruir([persona,juan,20]).
%? - info(punto(4,9)).