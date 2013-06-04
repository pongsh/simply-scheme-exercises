(define (second wd)
  (first (bf wd)))

(define (differences sent)
  (if (= (count sent) 1) 
      '()
      (se (- (second sent) (first sent)) (differences (bf sent)))))