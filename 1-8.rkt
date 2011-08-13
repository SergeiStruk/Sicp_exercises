(define (cub-iter guess x)
  (if (good-enough? guess x)
      guess
      (cub-iter (improve guess x)
                 x)))

(define (improve guess x)
  (/ (+ (* 2 guess)
        (/ x
           (sqr guess)))
     3))

(define (good-enough? guess x)
    (< (/ (abs (- guess (improve guess x))) x) 0.001))

(define (cub x)
  (cub-iter 1.0 x))


(print (cub 27))
