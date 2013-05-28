(define (always-one wd)
  1)

(define (count sent)
  (accumulate + (every always-one sent)))

(define (um? wd)
  (equal? wd 'um))

(define (count-ums sent)
  (count (keep um? sent)))