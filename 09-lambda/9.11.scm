(define (unabbrev sent1 sent2)
  (every (lambda (x) (if (number? x)
                         (item x sent2)
                         x)) sent1))