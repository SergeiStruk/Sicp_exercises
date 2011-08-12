(define (square_sum x y) (+ (sqr x) (sqr y)))

(define (foo n k m)(
                    cond((and (>= n k) (>= k m)) (square_sum n k))
                        ((and (>= k n) (>= n m)) (square_sum n n))
                        ((and (>= n k) (>= m k)) (square_sum n m))
                        (else (square_sum k m))
                    )
 )






(foo 1 2 3)
(foo 1 1 1)




