(define (first-last sent)
  (keep (lambda (x) (equal? (first x) (last x))) sent))