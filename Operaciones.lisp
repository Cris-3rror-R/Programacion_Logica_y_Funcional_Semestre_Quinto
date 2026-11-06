(defun restar (a b)
  (- a b))

(defun sumar (a b)
  (+ a b))

(defun multiplicar (a b)
  (* a b))

(defun dividir (a b)
  (/ a b))

(defun potencia (a b)
  (expt a b))

(defun residuo (a b)
  (mod a b))

(format t "Suma = ~a~%" (sumar 8 4))
(format t "Resta = ~a~%" (restar 8 4))
(format t "Multiplicación = ~a~%" (multiplicar 8 4))
(format t "División = ~a~%" (dividir 8 4))
(format t "Potencia = ~a~%" (potencia 8 4))
(format t "Residuo = ~a~%" (residuo 8 4))