(define (palindrome? sent)
  (palindrome-helper (accumulate word sent)))

(define (palindrome-helper sent)
  (cond ((<= (count sent) 1) #T)
        ((equal? (first sent) (last sent)) (palindrome-helper (bf (bl sent))))
        (else #F)))