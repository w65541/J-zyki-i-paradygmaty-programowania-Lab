(+ 2 (/ (* 3 4) 8))  ;7/2
(+ (sin 12) (cos (mod 256 32))) ;0.46342707
(defun plus (x y) (+ x y)) 
(defun parzysta (x) (if (= (mod x 2) 0) t nil))

(defun silnia (x)
    (
        (if (> x 0)
            (* x (silnia (- x 1)))
            1   
        )
    )
)

(defun fibosub2 (a b x)
    (dotimes (n x)
                    
                        (setq a b)
                        (setq b (+ a b))
                        (print b)
                    
    )
)

(defun fibosub1 (a b x)
    (print a)
            (if (> x 2)
                (fibosub2 a b (- x 2))
                nil
            )
)


(defun fibo (x) 
    (setq a 1)
    (setq b 1)
    (print a)
    (if (> x 1) 
        (fibosub1 a b x)
         nil
    )   
)
(fibo 5)

(defun sumaniep (x y)
    (setq s 0)
    (loop  
    (if (= (mod x 2) 1) (setq s (+ s x)) nil)
    (setq x (+ x 1))
    (when (> x y) (return s))
    )
)

(defun sumakwad (x y)
    (setq s 0)
    (loop  
    (setq s (+ s (* x x)))
    (setq x (+ x 1))
    (when (> x y) (return s))
    )
)