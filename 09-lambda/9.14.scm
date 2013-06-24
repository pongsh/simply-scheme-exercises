(define (substitute wd1 wd2 sent)
  (every (lambda (x) (if (equal? x wd2)
                         wd1
                         x)) sent))