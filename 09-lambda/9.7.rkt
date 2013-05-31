(define (letterwords letter sent)
  (keep (lambda (x) (member? letter x)) sent))