(define (aplize f)
  (lambda (x) (if (word? x) 
                  (f x)
                  (every f x))))