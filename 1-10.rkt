#lang racket
(require rackunit)

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;(define (f n) (A 0 n))  = 2*n
(check-equal? (A 0 5) 10 )
(check-equal? (A 0 7) 14 )

;(define (g n) (A 1 n)) = 2^n
(check-equal? (A 1 2) 4 )
(check-equal? (A 1 3) 8 )
(check-equal? (A 1 4) 16)

;(define (h n) (A 2 n)) = 2^(n^2)
(check-equal? (A 2 2) 4 )
(check-equal? (A 2 3) 16 )
(check-equal? (A 2 4) 65536 )


;(define (k n) (* 5 n n)) = ?
