(define (count wd)
  (if (empty? wd)
      0
      (+ 1 (count (bf wd)))))

(define (letter-count sent)
  (if (empty? sent)
      0
      (+ (count (first sent)) (letter-count (bf sent)))))