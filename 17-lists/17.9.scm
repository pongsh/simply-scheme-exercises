(define (my-list-ref lst n)
  (if (= n 0)
      (car lst)
      (my-list-ref (cdr lst) (- n 1))))