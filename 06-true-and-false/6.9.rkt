(define (thismany number noun)
  (if (equal? number 1)
      (sentence number noun)
      (sentence number (word noun 's))))