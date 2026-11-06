(defun rango (inicio fin)
    (if( > inicio fin)
        '()
        (cons inicio (rango (+ inicio 1) fin))))
        
(format t "Rango generado = ~a~%" (rango 1 15))