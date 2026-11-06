;;; Programa_1_Suma_de_Multiples_Filtrados.lisp
;;; Equipo : Vazquez Hernandez y Venegas Venegas

;;; Funcion rango
(defun rango (inicio fin)
    (if (> inicio fin)
        nil
        (cons inicio (rango (1+ inicio) fin))))

;;; Funcion para identificar multiplos de 3 
(defun multi_3 (x)
    (zerop (mod x 3)))

;;; Generacion de la lista de numeros del 1 al 50 y aplicar las operaciones
(let* ((elementos (rango 1 50))
       (multiplos (remove-if-not #'multi_3 elementos))
       (cubos (mapcar (lambda (x) (* x x x)) multiplos))
       (suma_cubos (reduce #'+ cubos)))
  (format t "Lista original: ~A~%" elementos)
  (format t "Los múltiplos de 3: ~A~%" multiplos)
  (format t "La lista de cubos: ~A~%" cubos)
  (format t "La sumatoria de cubos: ~A~%" suma_cubos))
