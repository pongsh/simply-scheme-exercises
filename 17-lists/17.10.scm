(define (my-length lst)
  (if (null? lst)
      0
      (+ 1 (my-length (cdr lst)))))