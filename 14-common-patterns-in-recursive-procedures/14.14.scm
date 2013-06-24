(define (same-shape? sent1 sent2)
  (cond ((and (empty? sent1) (empty? sent2)) #T)
        ((not (= (count (first sent1)) (count (first sent2)))) #F)
        (else (same-shape? (bf sent1) (bf sent2)))))