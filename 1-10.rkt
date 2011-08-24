#lang racket
(require rackunit)

(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

(define (f n) (A 0 n)); 2*n

(check-equal? (f 5) 10 )
(check-equal? (f 7) 14 )

(define (g n) (A 1 n)); 2^n

(check-equal? (g 2) 4 )
(check-equal? (g 3) 8 )
(check-equal? (g 4) 16)

(define (h n) (A 2 n)); 2^(2^(2^...(n раз)

(check-equal? (h 2) 4 )
(check-equal? (h 3) 16 )
(check-equal? (h 4) 65536 )


