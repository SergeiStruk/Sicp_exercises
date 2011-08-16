#lang racket
(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (sqr guess) x)) 0.001))

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (my_sqrt x)
  (sqrt-iter 1.0 x))

(my_sqrt 9)
; при вычислении else-clause происходит зацикливание - бесконечное обращение к sqrt-iter

