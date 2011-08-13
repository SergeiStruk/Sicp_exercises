(define (A x y)
  (cond ((= y 0) 0)
        ((= x 0) (* 2 y))
        ((= y 1) 2)
        (else (A (- x 1)
                 (A x (- y 1))))))

;(A 1 10) = 1024
;(A 2 4) = 65536
;(A 3 3) = 65536

;(define (f n) (A 0 n))  = 2*n

;(define (g n) (A 1 n)) = 2^n
(A 1 2);4 
(A 1 3);8
(A 1 4);16

;(define (h n) (A 2 n)) = 2^(n^2) 
(A 2 2);4
(A 2 3);16
(A 2 4);65536

;(define (k n) (* 5 n n)) = ?




