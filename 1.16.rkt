#lang sicp

(define (iter-fast-expt b n)
    (ife b n 1))

(define (ife base exponent a)
    (cond ((= exponent 0) a)
          ((even? exponent) (ife (* base base) (/ exponent 2) a))
          (else (ife base (- exponent 1) (* a base)))))

(iter-fast-expt 2 20)