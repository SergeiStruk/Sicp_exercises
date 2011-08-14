(define (cube x) (* x x x))

(define (p x) (- (* 3 x) (* 4 (cube x))))

(define (sine angle)
  (if (not (> (abs angle) 0.1))
      angle
      (p (sine (/ angle 3.0)))))

sine(12.15) -> sine(4.05) -> sine(1.35) -> sine(0.45) -> sine(0.15) -> sine(0.05)
;Сделано 5 вызовов процедуры р и 6 вызовов sine 
