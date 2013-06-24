(define (my-member? wd sent)
  (cond ((empty? sent) #F)
        ((equal? wd (first sent)) #T)
        (else (my-member? wd (bf sent)))))