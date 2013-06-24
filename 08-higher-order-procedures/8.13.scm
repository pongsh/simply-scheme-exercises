(define (letter-to-digit letter)
  (cond ((member? letter 'abc) 2)
        ((member? letter 'def) 3)
        ((member? letter 'ghi) 4)
        ((member? letter 'jkl) 5)
        ((member? letter 'mno) 6)
        ((member? letter 'pqrs) 7)
        ((member? letter 'tuv) 8)
        ((member? letter 'wxyz) 9)))
                  
(define (phone-unspell sent)
  (accumulate word (every letter-to-digit sent)))