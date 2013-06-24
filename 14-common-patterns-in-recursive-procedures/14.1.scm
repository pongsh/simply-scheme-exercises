(define (remove-once wd sent)
  (if (equal? (first sent) wd)
      (bf sent)
      (se (first sent) (remove-once wd (bf sent)))))