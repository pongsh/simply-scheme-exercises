(define (location wd sent)
  (cond ((or (not (member? wd sent)) (empty? sent)) #F)
        ((equal? wd (first sent)) 1)
        ((+ 1 (location wd (bf sent))))))