(define (odds sent)                        
  (if (<= (count sent) 1)
      sent
      (se (first sent) (odds (bf (bf sent))))))