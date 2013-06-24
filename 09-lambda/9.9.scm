(define (common-words sent1 sent2)
  (keep (lambda (wd) (member? wd sent2)) sent1))