(define (countdown num)
  (if (= num 0)
      'BLASTOFF!
      (se num (countdown (- num 1)))))