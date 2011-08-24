#lang racket
(require rackunit)

(define (double a)
  (+ a a))

(define (halve a)
  (/ a 2))

(define (multiply a b)
  (cond ((= b 1) a)
        ((or (= b 0) (= a 0)) 0)
        ((even? b) 
         (multiply (double a) (halve b)))
        (else (+ a (multiply a (- b 1))))))

(check-equal? (multiply 2 7) 14)
