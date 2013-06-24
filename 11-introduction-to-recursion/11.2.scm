(define (count-ums sent)
  (if (empty? sent)
      0
      (if (equal? 'um (first sent))
          (+ 1 (count-ums (bf sent)))
          (count-ums (bf sent)))))