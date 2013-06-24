(define (insert-and st)
  (sentence (butlast st) 'and (last st)))