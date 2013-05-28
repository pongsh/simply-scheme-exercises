(define (always-one wd)
  1)

(define (count sent)
  (accumulate + (every always-one sent)))

(define (letter-count sent)
  (accumulate + (every count sent)))