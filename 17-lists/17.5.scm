(define (max2 a b)
  (if (> b a) b a))

(define (max a . rest-of-numbers)
  (if (null? rest-of-numbers)
      a
      (apply max 
             (cons (max2 a (car rest-of-numbers)) 
                   (cdr rest-of-numbers)))))