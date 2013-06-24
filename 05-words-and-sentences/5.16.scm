(define (two-first wd1 wd2)
  (word (first wd1) (first wd2)))

(define (two-first-sent st)
  (word (first (first st)) (first (first (bf st)))))