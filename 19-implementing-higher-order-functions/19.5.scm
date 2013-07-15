(define (true-for-all? pred stuff)
  (cond ((empty? stuff) #t)
        ((not (pred (first stuff))) #f)
        (else (true-for-all? pred (bf stuff)))))