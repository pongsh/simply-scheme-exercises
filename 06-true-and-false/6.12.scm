(define (vowel? letter)
  (member? letter 'aeiou))

(define (plural wd)
  (cond ((equal? (last wd) 'y) (if (vowel? (last (bl wd)))
                                 (word wd 's)
                                 (word (bl wd) 'ies)))
        ((equal? (last wd) 'x) (word wd 'es))
        ((and (equal? (last wd) 'n) (equal? (last (bl wd)) 'a)) (word (bl (bl wd)) 'en))
        (else (word wd 's))))