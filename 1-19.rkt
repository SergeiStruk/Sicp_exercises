#lang racket
(require rackunit)

;a <- bq + aq + ap
;b <- bp + aq
;Tpq(a, b) = (bq+aq+ap, bp+aq)

;Вычислим Tpq^2(a, b)
;Tpq^2(a, b) = Tpq(Tpq(a, b)) = Tpq(bq+aq+ap, bp+aq) = ((bp+aq)q+(bq+aq+ap)q+(bq+aq+ap)p, (bp+aq)p+(bq+aq+ap)q) =
;= (b(2pq+q^2)+a(2pq+q^2)+a(p^2+q^2), b(p^2+q^2)+a(2pq+q^2)) = (bq'+aq'+ap', bp'+aq') = Tp'q'(a, b)

;Отсюда  p' = p^2+q^2, q' = 2pq+q^2

(define (square x). (* x x))

(define (fib n)
  (fib-iter 1 0 0 1 n))

(define (fib-iter a b p q count)
  (cond ((= count 0) b)
        ((even? count)
         (fib-iter a
                   b
                   (+ (square p) (square q))
                   (+ (* 2 p q)  (square q))
                   (/ count 2)))
        (else (fib-iter (+ (* b q) (* a q) (* a p))
                        (+ (* b p) (* a q))
                        p
                        q
                        (- count 1)))))

(check-eq? (fib 1) 1)
(check-eq? (fib 2) 1)
(check-eq? (fib 3) 2)
(check-eq? (fib 4) 3)
(check-eq? (fib 5) 5)
(check-eq? (fib 6) 8)
(check-eq? (fib 7) 13)
(check-eq? (fib 8) 15)