(define (remdup sent)
  (cond ((empty? sent) '())
        ((member? (first sent) (bf sent)) (remdup (bf sent)))
        (else (se (first sent) (remdup (bf sent))))))