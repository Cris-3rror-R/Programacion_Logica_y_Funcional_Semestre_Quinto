;;; Factorial

(defun factorial (n)
    (if(= n 0)
        1
        (* n (factorial (- n 1))) )
)

(format t "Factorial de 5 = ~a~%" (factorial 5))
