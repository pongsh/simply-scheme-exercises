; Reverses the sentence.

(define (f sent)
  (if (empty? sent)
      sent
      (se (f (bf sent)) (first sent))))