(defun Suma_Cuadrados(lista)
    (reduce #'+ (mapcar (lambda (x) (* x x)) lista)))

(format t "Programa que suma los cuadrados en un arreglo en Lisp~%")
(format t "La suma de los cuadrados es: ~A~%" (Suma_Cuadrados '(3 2 23 13 101 7 71 11)))