(define (my-keep pred sent)
  (cond ((empty? sent) '())
        ((pred (first sent)) (se (first sent) (my-keep pred (bf sent))))
        (else (my-keep pred (bf sent)))))