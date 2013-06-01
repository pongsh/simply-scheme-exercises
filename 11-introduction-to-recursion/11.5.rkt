(define (initials sent)
  (if (= (count sent) 1)
      (first (first sent))
      (se (first (first sent)) (initials (bf sent)))))