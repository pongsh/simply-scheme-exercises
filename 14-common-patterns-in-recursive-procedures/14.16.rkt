(define (vowel? letter)
  (member? letter 'aeiou))

(define (second wd)
  (first (bf wd)))

(define (syllables wd)
  (cond ((empty? wd) 0)        
        ((and (= (count wd) 2) (vowel? (first wd)) (vowel? (second wd))) 1)
        ((not (vowel? (first wd))) (syllables (bf wd)))
        ((and (vowel? (first wd)) (not (vowel? (second wd)))) (+ 1 (syllables (bf wd))))
        (else (syllables (bf wd)))))