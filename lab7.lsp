(merge list (1 2 3) (a b c) )

(defun lacz (x y) 
    (loop for i in (reverse x) do
        (push i y)
        )
    (print y)
)

(defun odwr (x)
    (setq w '())
    (loop for i in x do
       (push i w)
    )
    (return-from odwr w)
)

(defun palindrom (x)
    (loop for i in x and
        j in (odwr x) do
        (if (not (= i j)) (return-from palindrom nil) )
    )
    (return-from palindrom t)
)

(defun sortuj (x)
    (setq w '())
    (loop
        (setq m 0)   
        (loop for j in x do
        (if (> j m) (setq m j))
        )
        (dotimes (n (count m x))
        (push m w)
        )
        (setq x (remove m x))
  (when  (= (length x) 0) (return w))
    )
)
(sortuj '(4 3 2 1 1))
(defun ilepodz (x n)
    (setq w 0)
    (loop for i in x do
        (if (= (mod i n) 0) (setq w (+ w 1)))
    )
)
(defun zad6 (x)
    (ilepodz x 3)
)
(defun zad8 (x)
    (setq w '())
    (loop for i in x do
        (if (= (mod i 5) 0) (push i w))
    )
)

(defun iloczyn (x y)
    (setq w '())
    (loop for i in x and
        j in y do
        (push (* i j) w)
    )
    (return-from iloczyn (odwr w))
)

(defun generuj (x y)
    (setq w '())
    (loop
        (push x w)
        (setq x (+ x 1))
  (when  (= x (+ y 1)) (return (odwr w)))
    )
)

(defun generujascii (x y)
    (setq w '())
    (loop
        (push (code-char x) w)
        (setq x (+ x 1))
  (when  (= x (+ y 1)) (return (odwr w)))
    )
)