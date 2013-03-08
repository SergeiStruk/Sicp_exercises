#lang racket
(require rackunit)

(define eps 0.0001)

(define (square x)
    (* x x))

(define (cube x) 
    (* x x x)) 

(define (improve guess x)
  (/
   (+ (/ x (square guess))
      (* 2 guess))
   3))

(define (good-enough? guess prev_guess)
  (if (< (abs guess) eps)
      #t
      (< (/ (abs (- prev_guess guess)) prev_guess) eps)))

(define (cube-root-iter guess prev_guess x)
  (if (good-enough? guess prev_guess)
      guess
      (cube-root-iter (improve guess x) guess x)))

(define (cube-root x) 
    (cube-root-iter 1.0 0.0 x)) 

(check < (- (cube-root 0) 3) eps)
(check < (- (cube-root 27) 3) eps)