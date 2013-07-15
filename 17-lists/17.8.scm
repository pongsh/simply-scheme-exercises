(define (my-member element lst)
  (if (null? lst)
      #f
      (if (equal? element (car lst))
             lst
             (my-member element (cdr lst)))))