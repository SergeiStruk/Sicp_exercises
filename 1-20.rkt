#lang racket
(define (gcd a b)
  (if (= b 0)
    a
    (gcd b (remainder a b))))

;Нормальный порядок
;0 вызовов
(gcd 206 40)

    (= 40 0)
    (gcd 40 (remainder 206 40))

;1 вызов
(gcd 40 (remainder 206 40))

    (= (remainder 206 40) 0)
    (gcd (remainder 206 40) (remainder 40 (remainder 206 40)))


;2 вызовa
(gcd (remainder 206 40) (remainder 40 (remainder 206 40)))

    (= (remainder 40 (remainder 206 40)) 0)
    (gcd (remainder 40 (remainder 206 40))
         (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))


;4 вызова
(gcd (remainder 40 (remainder 206 40))
     (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))

    (= (remainder (remainder 206 40) (remainder 40 (remainder 206 40))) 0)
    (gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
         (remainder (remainder 40 (remainder 206 40))
              (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))

;11 вызовов
(gcd (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))
     (remainder (remainder 40 (remainder 206 40))
                (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))))

    (= (remainder (remainder 40 (remainder 206 40))
          (remainder (remainder 206 40) (remainder 40 (remainder 206 40))))
       0)
    (remainder (remainder 206 40) (remainder 40 (remainder 206 40)))

;Итого 1 + 2 + 4 + 11 = 18 вызовов

;Аппликативный порядок
 (gcd 206 40) 
 (gcd 40 (remainder 206 40)) 
  
 (gcd 40 6) 
 (gcd 6 (remainder 40 6)) 
  
 (gcd 6 4) 
 (gcd 4 (remainder 6 4)) 
  
 (gcd 4 2) 
 (gcd 2 (remainder 4 2)) 
  
 (gcd 2 0) 

;4 вызова
