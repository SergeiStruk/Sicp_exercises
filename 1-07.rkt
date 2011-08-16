#lang racket
(require rackunit)

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (good-enough? guess x)
  (< (abs (- (* guess guess) x)) 0.001))

(define (sqrt x)
  (sqrt-iter 1.0 x))

;Improve sqrt

(define (new-sqrt-iter guess x)
  (if (new-good-enough? guess x)
      guess
      (new-sqrt-iter (improve guess x)
                     x)))

(define (new-good-enough? guess x) 
      (< (abs (- (improve guess x) guess)) 
         (abs (* guess 0.001)))) 

(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))


(check-equal? (< (abs(- (new-sqrt 0.000009) 0.003)) 0.001) #t )
(check-equal? (< (abs(- (sqrt 0.000009) 0.003)) 0.001) #f )

