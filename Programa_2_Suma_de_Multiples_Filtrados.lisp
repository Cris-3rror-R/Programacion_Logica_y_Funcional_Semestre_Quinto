;;; Programa_2_Suma_de_Multiples_Filtrados.lisp
;;; Equipo : Vazquez Hernandez y Venegas Venegas

;;; Ingresar la cantidad de elementos y los elementos de la lista
(let ((total (read))
      (lista '()))
(dotimes (i total)
    (setq lista (append lista (list (read)))))

  ;;; Función para identificar múltiplos de 3
  (defun multi_3 (x)
    (zerop (mod x 3)))

  ;;; Generación de la lista y operaciones
  (let* ((elementos lista)
         (multiplos (remove-if-not #'multi_3 elementos))
         (cubos (mapcar (lambda (x) (* x x x)) multiplos))
         (suma_cubos (reduce #'+ cubos)))
    (format t "~%Lista original: ~A~%" elementos)
    (format t "Los múltiplos de 3: ~A~%" multiplos)
    (format t "La lista de cubos: ~A~%" cubos)w
    (format t "La sumatoria de cubos: ~A~%" suma_cubos)))

