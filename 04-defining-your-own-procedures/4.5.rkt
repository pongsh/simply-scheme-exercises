(define (fahrenheit-to-celcius temperature)
  (* (/ 5 9) (- temperature 32)))

(define (celcius-to-fahrenheit temperature)
  (* (/ 9 5) (+ temperature 32)))