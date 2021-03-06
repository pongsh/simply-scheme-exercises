(define (has-vowel? wd)
  (cond ((empty? wd) #F)
        ((member? (first wd) 'aeiou) #T)
        (else (has-vowel? (bf wd)))))
          
(define (pigl wd)
  (if (has-vowel? wd)
      (if (member? (first wd) 'aeiou)
          (word wd 'ay)
          (pigl (word (bf wd) (first wd))))
      (word wd 'ay)))  