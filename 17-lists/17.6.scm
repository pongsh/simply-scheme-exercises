(define (my-append lst1 lst2)
  (if (null? lst1)
      lst2
      (cons (car lst1) (my-append (cdr lst1) lst2))))

(define (my-append2 lst . rest-of-list )
  (if (null? rest-of-list)
      lst
      (apply my-append2 (cons (my-append lst (car rest-of-list)) 
                   (cdr rest-of-list)))))