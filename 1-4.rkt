(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))
;если b > 0 будет выполняться a + b, иначе a - b, но результат будет один и тот же
(a-plus-abs-b 1 2);3
(a-plus-abs-b 1 -2);3

