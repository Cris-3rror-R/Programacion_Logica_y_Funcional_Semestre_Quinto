;;Funcion que calcula el cuadrado de un numero en una lista
(defun cuadrado  (x)
    (* x x)
;;Función recursiva que aplica la función cuadrado a cada elemento de la lista
(defun suma-cuadrados (lista)
    (if (null lista)
        0
        (+ (cuadrado (car lista)) (suma-cuadrados (cdr lista)))))
)