(define (sentence-version f)
  (lambda (wd) (every f wd)))