(defun Cuadrados (lista)
    (mapcar (lambda (x) (* x x)) lista))
    
(format t "Resultado = ~a~%" (Cuadrados '(1 19 3 4 5 23)))