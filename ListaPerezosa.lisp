;; Estudiantes: Vazquez Hernandez Osbaldo Ismael y Venegas Venegas Cristopher Axel
;; Grupo:
;; Definir una lista infinita de numeros naturales usando evalucion perezosa(LAZY EVALUATION)
;; Es una funcion recurisva que utiliza cons para crear una lista donde el primer elemento es n
;; el segundo elemento es una funcion lambda que genera el resto de la lista
(defun NaturalsNumeros (n)
  (cons n (lambda () (NaturalsNumeros (+ n 1)))))

;; Funcion para tomar los primeros n elementos de la lista perezosa
(defun Tomar_Numero (n Lazy_List)
;; Si n es mayor que 0, cons el primer elemento de la lista perezosa
    (when (> n 0)
      (cons (car Lazy_List)
;; Llama recuersivamente a Tomar_Numero con n-1 para obtener el resto de los elementos solicitados
            (Tomar_Numero (- n 1) (funcall (cdr Lazy_List))))))

;; Crear la lista infinita de numeros naturales comenzando desde 0
(setq Lista_Infinita (NaturalsNumeros 0))
;; Llama la funcion Tomar_Numero para obtener los primeros 10000 numeros de la lista infinita de forma 
;; perezosa y los imprime.
(print (Tomar_Numero 10000 Lista_Infinita))
