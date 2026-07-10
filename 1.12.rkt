#lang sicp

(define (pascal row index)
    (cond ((= index row) 1)
          ((= index 0) 1)
          (else (+ (pascal (- row 1) (- index 1)) (pascal (- row 1) index)))))

(pascal 4 0)
(pascal 4 1)
(pascal 4 2)
(pascal 4 3)
(pascal 4 4)