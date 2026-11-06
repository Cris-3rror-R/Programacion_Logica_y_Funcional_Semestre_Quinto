; Genera una lsita de nuemeros enteros desde inciio hast fin
(defun rango (inicio fin)
    (if( > inicio fin)
        nil
        (cons inicio (rango (+ inicio 1) fin))))
    
; Calcula la suma de los cuadrados de los numeros pares en un rango
(defun suma_cuadrados_pares (inicio fin)
    (reduce #'+ 
        (mapcar (lambda (x) (* x x)) 
                (remove-if-not #'evenp(rango inicio fin))))) 

(let ((resultado(suma_cuadrados_pares 1 10)))
    (format t "La suma de los cuadrados de los numeros pares del 1 al 10 es: ~a~%" resultado))
    