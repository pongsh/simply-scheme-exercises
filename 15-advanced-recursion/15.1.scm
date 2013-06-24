(define (to-binary num)
  (cond ((= num 0) 0)
        ((= num 1) 1)
        (else (word (to-binary (floor (/ num 2))) (modulo num 2)))))