(define (my-keep f sent)
  (accumulate se (every (lambda (x) (if (f x)
                                        x
                                        '())) sent)))
  