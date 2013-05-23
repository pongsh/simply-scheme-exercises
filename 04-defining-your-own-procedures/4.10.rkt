(define (discount initial percentage)
  (* initial (/ (- 100 percentage) 100)))

(define (tip totalbill)
  (ceiling (discount totalbill 85)))