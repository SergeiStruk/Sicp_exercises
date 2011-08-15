(define (sum_square x y) (+ (sqr x) (sqr y)))

(define (sum_square_for_biggest n k m)(
                    cond((and (>= n k) (>= k m)) (sum_square n k))
                        ((and (>= k n) (>= n m)) (sum_square n n))
                        ((and (>= n k) (>= m k)) (sum_square n m))
                        (else (sum_square k m))
                    )
 )

(sum_square_for_biggest 1 2 3)
(sum_square_for_biggest 1 1 1)




