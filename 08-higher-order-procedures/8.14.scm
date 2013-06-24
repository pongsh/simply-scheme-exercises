(define (always-one wd)
  1)

(define (count sent)
  (accumulate + (every always-one sent)))

(define (subword sent startpos endpos)
  ((repeated bl (- (count sent) endpos)) ((repeated bf (- startpos 1)) sent)))