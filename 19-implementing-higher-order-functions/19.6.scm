(define (true-for-any-pair? pred sent)
  (cond ((= 1 (count sent)) #f)
        ((pred (first sent) (first (bf sent))) #t)
        (else (true-for-any-pair? pred (bf sent)))))