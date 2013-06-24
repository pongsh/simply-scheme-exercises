(define (base-grade fullgrade)
  (let ((grade (first fullgrade)))
        (cond ((equal? grade 'A) 4)
              ((equal? grade 'B) 3)
              ((equal? grade 'C) 2)
              ((equal? grade 'D) 1)
              ((else 0)))))

(define (grade-modifier fullgrade)
  (let ((grade (last fullgrade)))
    (cond ((equal? grade '+) 0.33)
          ((equal? grade '-) -0.33)
          (else 0))))

(define (final-grade fullgrade)
  (+ (grade-modifier fullgrade) (base-grade fullgrade)))

(define (total-points sent)
  (if (empty? sent)
      0
      (+ (final-grade (first sent)) (total-points (bf sent)))))

(define (gpa sent)
  (/ (total-points sent) (count sent)))
   
(gpa '(A A+ B+ B))

(define (count sent)
  (if (empty? sent)
      0
      (+ 1 (count (bf sent)))))