(define (type-check f pred)
  (lambda (x) (if (pred x)
                  (f x)
                  #F)))