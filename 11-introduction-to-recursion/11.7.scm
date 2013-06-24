(define (copies times wd)
  (if (= times 0)
      '()
      (se wd (copies (- times 1) wd))))