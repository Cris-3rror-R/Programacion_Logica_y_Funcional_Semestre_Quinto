%Amor_y_felicidad_en_Prolog
%Hechos
ama(jose, ana).   %jose ama a ana
ama(juan, musica).  %juan ama la musica
ama(juliana, insectos).   %juliana ama a los insectos
ama(juliana, jose).   %juliana ama a jose

%Regla: Una persona es feliz si ama algo
%El guion bajo (_) indica que no nos importa qué es lo que ama
%es decir, no es necesario saber
%que ama, basta con que ame algo
feliz(X) :- ama(X, _).