(define (vowel? letter)
  (member? letter 'aeiou))

(define (indef-article wd)
  (if (vowel? (first wd))
      (sentence 'an wd)
      (sentence 'a wd)))