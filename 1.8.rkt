#lang sicp

(define (curt x)
    (curt-iter 1.0 x))

(define (curt-iter old_guess x)
    (define new_guess (improve old_guess x))
    (if (good-enough? old_guess new_guess)
    new_guess
    (curt-iter new_guess x)))

(define (improve guess x)
    (/ (+ (/ x (* guess guess)) (* 2 guess)) 3))

(define (good-enough? old_guess new_guess)
    (< (/ (abs (- new_guess old_guess)) old_guess) 0.001))

(curt 125)