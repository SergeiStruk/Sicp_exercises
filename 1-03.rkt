#lang racket
(require rackunit)

(define (sum-square x y) (+ (sqr x) (sqr y)))

(define (sum-square-for-biggest a b c)
  (cond ((and (> a c) (> b c)) (sum-square a b))
        ((and (> a b) (> c b)) (sum-square a c))
        (else (sum-square b c))))

(check-equal? (sum-square-for-biggest 1 2 3) 13 )
(check-equal? (sum-square-for-biggest 1 1 1) 2 )
(check-equal? (sum-square-for-biggest 3 2 3) 18 )
