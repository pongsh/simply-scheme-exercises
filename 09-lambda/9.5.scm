(define (prepend-every prefix sent)
  (every (lambda (wd) (word prefix wd)) sent))