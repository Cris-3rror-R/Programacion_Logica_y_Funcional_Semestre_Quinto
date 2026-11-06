(defun rango_paso (inicio fin paso)
    (if( > inicio fin)
        '()
        (cons inicio (rango_paso (+ paso inicio) fin paso))))

(format t "Rango generado = ~a~%" (rango_paso 0 10 2))