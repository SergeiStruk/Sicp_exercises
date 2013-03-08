#lang racket
(require rackunit)

(define (binomial-coefficient row col)
  (if (or (= col 1) (= row col))
    1
    (+ (binomial-coefficient (- row 1) (- col 1))
       (binomial-coefficient (- row 1) col))))

(check-equal? (binomial-coefficient 1 1) 1 )
(check-equal? (binomial-coefficient 3 2) 2 )
(check-equal? (binomial-coefficient 5 3) 6 )