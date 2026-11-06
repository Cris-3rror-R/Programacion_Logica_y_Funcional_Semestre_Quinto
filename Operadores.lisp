;;; --- Definicion de una funcion rango ---
(defun rango (inicio fin)
    "Genera una lista de enteros dede inicio hasta fin."
    (if (> inicio fin)
        nil
        (cons inicio (rango (1+ inicio) fin))))

;;; -- Ejemplo con operadores aritmeticos ---
(let ((numeros (rango 1 5)))
    (format t "Números: ~A~%" numeros)
    (format t "Suma con +: ~A~%" (reduce #'+ numeros))
    (format t "Producto con *: ~A~%" (reduce #'* numeros))
    (format t "Resta con - (de izquierda a derecha): ~A~%" (reduce #'- numeros))
    (format t "Division con / (de izquierda a derecha): ~A~%" (reduce #'/ numeros)))

;;; --- Ejemplo con operadores logicos ---
(let ((lista '(a 1 b 2 c 3)))
    (format t "~%Lista original: ~A~%" lista)
    (format t "¿Solo numeros? (numberp) : ~A~%" (mapcar #'numberp lista))
    (format t "¿Solo simbolos? (symbolp) : ~A~%" (mapcar #'symbolp lista))
    (format t "Negacion con NOT : ~A~%" (mapcar #'not (mapcar #'numberp lista))))

;;; --- Filtrar pares e impares con predicados ---
(let ((valores (rango 1 10)))
    (format t "~%Valores: ~A~%" valores)
    (format t "Pares (evenp): ~A~%" (remove-if-not #'evenp valores))
    (format t "Impares (oddp): ~A~%" (remove-if-not #'oddp valores)))

;;; --- Operadores combinados
(let* ((valores (rango 1 10))
       (pares (remove-if-not #'evenp valores))
       (cuadrados (mapcar (lambda (x) (* x x)) pares))
       (suma (reduce #'+ cuadrados)))
  (format t "~%Valores: ~A~%" valores)
  (format t "Pares: ~A~%" pares)
  (format t "Cuadrados de pares: ~A~%" cuadrados)
  (format t "Suma total: ~A~%" suma))