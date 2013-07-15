(define (true-for-all-pairs? pred sent)
  (cond ((= 1 (count sent)) #t)
        ((not (pred (first sent) (first (bf sent)))) #f)
        (else (true-for-all-pairs? pred (bf sent)))))