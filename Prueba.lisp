(loop for i from 1 to 9 do
    (format t "~v@T~A~%" 
                    (- 9 i)
                    (make-string (+ (* 2 i) -1) :initial-element #\*)))