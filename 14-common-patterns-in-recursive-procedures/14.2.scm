(define (up wd)
  (if (= (count wd) 1)
      wd
      (se (up (bl wd)) wd)))