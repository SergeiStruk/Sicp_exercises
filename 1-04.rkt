#lang racket
(require rackunit)
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;f = a + |b|

(check-equal? (a-plus-abs-b 1 2) 3 )
(check-equal? (a-plus-abs-b 1 -2) 3 )
(check-equal? (a-plus-abs-b -1 -2) 1 )


