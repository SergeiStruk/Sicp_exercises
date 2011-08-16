#lang racket
(require rackunit)

(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))

(define (new a b)
  (cond ((= b 1) a)
        ((or (= b 0) (= a 0)) 0)
        ((even? b) 
         (new (double a) (halve b)))
        (else (+ a (new a (- b 1))))))

(check-equal? (new 2 7) 14)
