(define (before-in-list? lst a b)
  (cond ((null? lst) #f)
        ((equal? (car lst) a) (member? b (cdr lst)))
        (else (before-in-list? (cdr lst) a b))))