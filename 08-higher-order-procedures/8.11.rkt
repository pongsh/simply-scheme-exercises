(define (always-one wd)
  1)

(define (count sent)
  (accumulate + (every always-one sent)))

(define (grade-to-point grade)
  (let ((base-grade (first grade))
        (grade-modifier (last grade)))
        (+
        (cond ((equal? base-grade 'A) 4)
          ((equal? base-grade 'B) 3)
          ((equal? base-grade 'C) 2)
          ((equal? base-grade 'D) 1)
          (else 0))
        (cond ((equal? grade-modifier '+) 0.33)
          ((equal? grade-modifier '-) -0.33)
          (else 0)))))

(define (gpa sent)
  (/ (accumulate + (every grade-to-point sent)) (count sent)))

(gpa '(A A+ B+ B))