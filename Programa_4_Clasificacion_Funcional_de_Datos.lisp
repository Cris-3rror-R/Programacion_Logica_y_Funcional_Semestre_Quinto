;;; Programa_4_Clasificacion_Funcional_de_Datos.lisp
;;; Equipo : Vazquez Hernandez y Venegas Venegas

(defun procesarLista ()
  
  (let ((lista-temporal nil))
    (format t "Introduce 10 elementos (pueden ser números o simbolos).~%")
    
    (dotimes (i 10)
      (format t "Elemento ~d/10 > " (+ i 1))
      (let ((elemento (read)))
        (push elemento lista-temporal)))
    
    (let ((lista-original (reverse lista-temporal)))
      (format t "~%--- Procesando la lista... ---~%")
      
      (let ((numeros (remove-if-not #'numberp lista-original))
            (simbolos (remove-if-not #'symbolp lista-original)))
        
        (let ((cuadrados (mapcar #'(lambda (n) (* n n)) numeros))
              (nombres-simbolos (mapcar #'symbol-name simbolos)))
          
          (format t "Lista Original: ~a~%" lista-original)
          (format t "Lista de Números: ~a~%" numeros)
          (format t "Lista de Cuadrados: ~a~%" cuadrados)
          (format t "Lista de Símbolos: ~a~%" simbolos)
          (format t "Lista de Nombres de Símbolos: ~a~%" nombres-simbolos))))))


(procesarLista)
