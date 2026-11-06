;;; Programa_3_Clasificacion_Funcional_de_Datos.lisp
;;; Equipo : Vazquez Hernandez y Venegas Venegas

(defun procesarLista (lista)

  (let ((numeros (remove-if-not #'numberp lista))
        (simbolos (remove-if-not #'symbolp lista)))


    (let ((cuadrados (mapcar #'(lambda (n) (* n n)) numeros))
          (nombres-simbolos (mapcar #'symbol-name simbolos)))

    
      (format t "Lista Original: ~a~%" lista)
      (format t "Lista de Números: ~a~%" numeros)
      (format t "Lista de Cuadrados: ~a~%" cuadrados)
      (format t "Lista de Símbolos: ~a~%" simbolos)
      (format t "Lista de Nombres de Símbolos: ~a~%" nombres-simbolos))))


(procesarLista '(1 A 2 B 3 C D 4 5 E))
