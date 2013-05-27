(define (divisible? a b)
  (equal? (modulo a b) 0))

(define (leap-year? year)
  (or (and (divisible? year 100)
           (divisible? year 400))
      (and (divisible? year 4)
           (not (divisible? year 100)))))

(define (valid-month? month)
  (between? month 1 12))

(define (between? number a b)
  (and (>= number a) (<= number b)))

(define (valid-day? day month year)
  (cond ((member? month '(1 3 5 7 8 10 12)) (between? day 1 31))
        ((member? month '(4 6 9 11)) (between? day 1 30))
        (else (if (leap-year? year)
                  (between? day 1 29)
                  (between? day 1 28)))))

(define (valid-date? day month year)
  (and (valid-month? month) (valid-day? day month year)))

; tests for valid-date?
(valid-date? 4 10 1949)
;#T

(valid-date? 4 20 1776)
;#F

(valid-date? 0 5 1992)
;#F

(valid-date? 29 2 1900)
;#F

(valid-date? 29 2 2000)
;#T