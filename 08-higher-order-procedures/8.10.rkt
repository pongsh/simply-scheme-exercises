(define (true-for-all? predicate sent)
  (equal? (keep predicate sent) sent))