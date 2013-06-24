(define (replace-text wd)
  (cond ((equal? wd 'good) 'great)
        ((equal? wd 'bad) 'terrible)
        ((number? wd) (* wd 2))
        (else wd)))

(define (exaggerate sent)
  (every replace-text sent))