(define (good-enough? guess x)
  (< (abs (- (sqr guess) x)) 0.0001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))

(define (_sqrt x)
  (sqrt-iter 1.0 x))

(define (new-sqrt-iter guess x)
  (if (< (/ (abs (- (improve guess x) guess)) guess) 0.0001)
      guess
      (new-sqrt-iter (improve guess x)
                     x)))

(define (new-sqrt x)
  (new-sqrt-iter 1.0 x))

(define temp 0.000009)

(_sqrt temp)
(new-sqrt temp)

