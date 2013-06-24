(define (who sent)
  (every (lambda (person) (se person sent)) '(pete roger john keith)))