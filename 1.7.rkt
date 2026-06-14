#lang sicp
(define (sqrt x)
    (sqrt-iter 1.0 x))

(define (sqrt-iter old_guess x)
    (define new_guess (improve old_guess x))
    (if (good-enough? old_guess new_guess)
    new_guess
    (sqrt-iter new_guess x)))

(define (improve guess x)
    (average guess (/ x guess)))

(define (average x y)
    (/ (+ x y) 2))

(define (good-enough? old_guess new_guess)
    (< (/ (abs (- new_guess old_guess)) old_guess) 0.001))

(sqrt 0.00005)