(define (count sent)
  (if (empty? sent)
      0
      (+ 1 (count (bf sent)))))