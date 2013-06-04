(define (second wd)
  (first (bf wd)))

(define (remove-adjacent-duplicates sent)
  (cond ((= (count sent) 1) (first sent))
        ((equal? (first sent) (second sent)) (se (remove-adjacent-duplicates (bf sent))))
        (else (se (first sent) (remove-adjacent-duplicates (bf sent))))))