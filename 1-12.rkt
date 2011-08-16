#lang racket
(require rackunit)

(define (pascal_element row col)
  (cond
    ((or (<= row 2) (= col 1) (= row col)) 1)
    (else
      (+ (pascal_element (- row 1) (- col 1))
         (pascal_element (- row 1) col)))))

(check-equal? (pascal_element 1 1) 1 )
(check-equal? (pascal_element 3 2) 2 )
(check-equal? (pascal_element 5 3) 6 )
