(define (vowel? wd)
  (member? wd 'aeiou))

(define (gertrude wd)
  (let ((something (se (if (vowel? (first wd)) 'an 'a) wd)))
    (se something 'is
        something 'is
        something)))

(gertrude 'rose)
(gertrude 'iguana)