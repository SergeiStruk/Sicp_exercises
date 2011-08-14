(define (pascal_element row col)
  (cond
    ((or (<= row 2) (= col 1) (= row col)) 1)
    (else
      (+ (pascal_element (- row 1) (- col 1))
         (pascal_element (- row 1) col)))))

(pascal_element 1 1);1
(pascal_element 3 2);2
(pascal_element 5 3);6
