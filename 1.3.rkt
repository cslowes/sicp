#lang sicp

(define (foo x y z)
    (cond ((and (<= x y) (<= x z)) (+ (* y y) (* z z)))
          ((and (<= z x) (<= z x)) (+ (* x x) (* y y)))
          ((and (<= y x) (<= y z)) (+ (* x x) (* z z)))))

(foo 2 1 3)