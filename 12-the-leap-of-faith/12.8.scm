(define (numbers sent)
  (if (empty? sent)
      '()
      (if (number? (first sent))
                    (se (first sent) (numbers (bf sent)))
                    (se (numbers (bf sent))))))