(define (real-word? wd)
  (not (member? wd '(a the an in of and for to with))))

(define (real-words sent)
  (if (empty? sent)
      '()
      (if (real-word? (first sent))
          (se (first sent) (real-words (bf sent)))
          (se (real-words (bf sent))))))