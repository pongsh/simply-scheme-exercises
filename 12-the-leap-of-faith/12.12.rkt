(define (convert roman-value)
  (cond ((equal? roman-value 'M) 1000)
        ((equal? roman-value 'D) 500)
        ((equal? roman-value 'C) 100)
        ((equal? roman-value 'L) 50)
        ((equal? roman-value 'X) 10)
        ((equal? roman-value 'V) 5)
        ((equal? roman-value 'I) 1)
        (else 0)))

; Calculates the value of 'a' depending on whether it is smaller or larger
; than b.
(define (overall-value a b)
  ((if (>= (convert a) (convert b))
       +
       -) (convert a)))

(define (second wd)
  (first (bf wd)))

(define (arabic num)
  (if (= (count num) 1)
      (convert num)
      (+ (overall-value (first num) (second num))
         (arabic (bf num)))))