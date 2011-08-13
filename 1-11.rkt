;рекурсивный процесс
(define (foo n)
  (if(< n 3)
     n
     (+ (foo(- n 1))
        (foo(- n 2))
        (foo(- n 3))
        )     
   )   
)
(foo 5)

;итеративный
(define (f n)
  (f1 2 1 0 n))

(define (f1 a b c n)
             (if (= n 0)
                 c
                 (f1 (+ a b c) a b (- n 1))
                 )
             )  

(f 5)
