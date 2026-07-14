#lang sicp

(define (fast* x y)
    (f* x y 0))

(define (f* b c a)
    (cond ((= c 1) (+ b a))
          ((even? c) (f* (double b) (halve c) a))
          (else (f* b (- c 1) (+ a b)))))

(define (double x)
    (+ x x))

(define (halve x)
    (if (even? x)
        (/ x 2)
        (/ (- x 1) 2)))

(fast* 200 60)