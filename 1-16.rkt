#lang racket
(require rackunit)
(define (fast-expt b n)
  (fast-expt-iter 1 b n))

(define (fast-expt-iter a b n)
  (if (= n 0)
      a
      (if (even? n)
          (fast-expt-iter a (sqr b) (/ n 2))
          (fast-expt-iter (* a b) b (- n 1))        
          )     
      )
  )

(check-equal? (fast-expt 2 5) 32 )

