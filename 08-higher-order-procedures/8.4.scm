(define (vowel? wd)
  (member? wd 'aeiou))

(define (ends-vowel? wd) (vowel? (last wd)))

(define (even-count? wd) (even? (count wd)))

(define (choose-beatles predicate-function)
  (keep predicate-function '(John Paul George Ringo)))