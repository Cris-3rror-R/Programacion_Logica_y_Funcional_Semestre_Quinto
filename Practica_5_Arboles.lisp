;;; Programa: Operaciones basicas con Arboles en Lisp
;;; Preorden, Inorden y Postorden son funciones recursivas que recorren el arbol segun
;;; el orden indicado

;; Funcion para recorrido en Preorden
(defun Preorden (Arbol)
  (when Arbol
    (format t "~A " (first Arbol))
    (dolist (Subarbol (rest Arbol))
      (Preorden Subarbol))))

;; Funcion para recorrido en Inorden
(defun Inorden (Arbol)
  (when Arbol
    (let ((Subarboles (rest Arbol)))
      (when Subarboles
        (Inorden (first Subarboles))))
    (format t "~A " (first Arbol))
    (let ((Subarboles (rest Arbol)))
      (dolist (Subarbol (rest Subarboles))
        (Inorden Subarbol)))))

;; Funcion para recorrido en Postorden
(defun Postorden (Arbol)
  (when Arbol
    (dolist (Subarbol (rest Arbol))
      (Postorden Subarbol))
    (format t "~A " (first Arbol))))

;; Funcion para contar los nodos del arbol
;; Usa reduce y mapcar para sumar la raiz mas los nodos de todos los subarboles
(defun ContarNodos (Arbol)
  (if (null Arbol)
      0
      (+ 1 (reduce #'+ (mapcar #'ContarNodos (rest Arbol))
                  :initial-value 0))))

;; Funcion de buscar si un nodo dado existe en el arbol
;; Busca recursivamente si un valor aparece en algun nodo.
(defun BuscarNodo (Arbol Valor)
  (cond
    ((null Arbol) nil)
    ((eql (first Arbol) Valor) t)
    (t (some (lambda (Subarbol) (BuscarNodo Subarbol Valor))
             (rest Arbol)))))

;; Funcion contar las hojas del arbol. Vazquez Hernandez Osbaldo Ismael
(defun contarHojas (arbol)
  (cond
    ((null arbol) 0)
    ((null (rest arbol)) 1)
    (t (reduce #'+
               (mapcar #'contarHojas (rest arbol))
               :initial-value 0))))

;; Funcion determinar la profundidad del arbol. Venegas Venegas Cristopher Axel
(defun ProfundidadArbol (Arbol)
  (if (null Arbol)
      0
      (+ 1 (reduce #'max (mapcar #'ProfundidadArbol (rest Arbol))
                   :initial-value 0))))

;; Funcion principal, permite ingresar el arbol y realizar las operaciones.
(defun Main ()
  (format t "Ingrese el arbol en formato de lista anidada: ~%")
  (let ((Arbol (read)))
    (format t "~%--------- RECORRIDOS -----~%")
    (format t "~%~%Preorden: ")
    (Preorden Arbol)
    (format t "~%~%Inorden: ")
    (Inorden Arbol)
    (format t "~%~%Postorden: ")
    (Postorden Arbol)

    (format t "~%~%----- CONTEO DE NODOS ----~%")
    (format t "~%El arbol tiene ~A nodos.~%" (ContarNodos Arbol))

    (format t "~%----- BUSQUEDA DE NODO ----~%")
    (format t "~%Ingrese el valor a buscar: ~%")
    (let ((Valor (read)))
      (if (BuscarNodo Arbol Valor)
          (format t "~%El nodo ~A SI se encuentra en el arbol.~%" Valor)
          (format t "~%El nodo ~A NO se encuentra en el arbol.~%" Valor)))

    ;; La funcion de Osbaldo para contar hojas
    (format t "~%--- Conteo de hojas ---~%")
    (format t "~%El arbol tiene ~A hojas.~%" (contarHojas arbol))

    ;; La funcion de Cristopher para profundidad
    (format t "~%----- PROFUNDIDAD DEL ARBOL ----~%")
    (format t "~%La profundidad del arbol es: ~A~%" (ProfundidadArbol Arbol))))

;; La ejecucion del programa inicia al invocar a la funcion Main
;; La lista anidada para el programa: (A (B (N (M))) (C (D)) (E (F (K (O (Q (I (M (U) (P)))))))))
(Main)
