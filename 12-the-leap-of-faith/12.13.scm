; The results will differ depending on how you want to calculate the 
; number of days in a year. For this I'm just assuming there are 52 weeks
; in a year so 364 days.

(define minutes 60)
(define hours (* minutes 60))
(define days (* hours 24))
(define weeks (* days 7))
(define years (* weeks 52))
(define centuries (* years 100))

(define (pluralise time unit)
  (if (equal? (se time unit) '(1 centuries))
      '(1 century)
      (if (= time 1) 
          (se time (bl unit))
          (se time unit))))

(define (remaining time time-gone)
  (- time (to-seconds time-gone)))

(define (second wd)
  (first (bf wd)))

(define (to-seconds time)
  (cond ((equal? (second time) 'centuries) (* (first time) centuries))
        ((equal? (second time) 'years) (* (first time) years))
        ((equal? (second time) 'weeks) (* (first time) weeks))
        ((equal? (second time) 'days) (* (first time) days))
        ((equal? (second time) 'hours) (* (first time) hours))
        ((equal? (second time) 'minutes) (* (first time) minutes))
        (else 0)))

(define (convert time)
  (cond ((> time centuries) (se (floor (/ time centuries)) 'centuries))
        ((> time years) (se (floor (/ time years)) 'years))
        ((> time weeks) (se (floor (/ time weeks)) 'weeks))
        ((> time days) (se (floor (/ time days)) 'days))
        ((> time hours) (se (floor (/ time hours)) 'hours))
        ((> time minutes) (se (floor (/ time minutes)) 'minutes))))

(define (describe-time time)
  (if (< time 60)
      (se (pluralise time 'seconds))
      (let ((converted-time (convert time)))
        (se (pluralise (first converted-time) (second converted-time)) 
          (describe-time (remaining time converted-time))))))