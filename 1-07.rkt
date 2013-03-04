#lang racket
(require rackunit)

(define (sqrt x)
  
  (define (sqrt-iter prev_guess guess x)
    
     (define (average x y)
       (/ (+ x y) 2))
  
     (define (improve guess x)
       (average guess (/ x guess)))
  
     (define (good-enough? guess prev_guess)
       (if (< (abs guess) 0.0001)
           #t
           (< (/ (abs (- prev_guess guess)) prev_guess) 0.0001)))
  
     (if (good-enough? guess prev_guess)
         guess
         (sqrt-iter guess (improve guess x) x)))
  
      (sqrt-iter 1 0.1 x))

(check < (- (sqrt 0.000009) 0.003) 0.001)

