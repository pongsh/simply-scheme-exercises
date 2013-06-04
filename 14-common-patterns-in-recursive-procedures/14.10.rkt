(define (second wd)
  (first (bf wd)))

(define (count-adjacent-duplicates sent)
  (cond ((= (count sent) 1) 0)
        ((equal? (first sent) (second sent)) (+ 1 (count-adjacent-duplicates (bf sent))))
        (else (count-adjacent-duplicates (bf sent)))))   