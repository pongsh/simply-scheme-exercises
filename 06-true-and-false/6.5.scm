(define (european-time time)
  (cond ((equal? time '(12 am)) 24)
        ((equal? time '(12 pm)) 12)
        ((equal? (last time) 'pm) (+ (first time) 12))
        (else (first time))))

(define (american-time time)
  (cond ((equal? time 12) '(12 PM))
        ((equal? time 24) '(12 AM))
        ((< time 12) (sentence time 'AM))
        (else (sentence (- time 12) 'PM))))