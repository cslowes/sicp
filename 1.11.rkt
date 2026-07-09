#lang sicp

(define (f n)
    (f-iter 2 1 0 n 2))

(define (f-iter a b c target counter)
    (cond ((< target 3) target)
          ((= target counter) a)
          (else (f-iter (+ a (* 2 b) (* 3 c)) a b target (+ counter 1)))))

(f 3)