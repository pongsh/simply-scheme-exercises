(define (substring-helper wd)
  (if (empty? wd)
      '()
      (se wd (substring-helper (bl wd)))))

(define (substring wd)
  (if (empty? wd)
      (se "")
      (se (substring-helper wd) (substring (bf wd)))))