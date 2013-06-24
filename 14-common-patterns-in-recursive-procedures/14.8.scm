(define (second wd)
  (first (bf wd)))

(define (repeat n wd)
  (if (= n 0)
      '()
      (se wd (repeat (- n 1) wd))))

(define (expand sent)
  (cond ((empty? sent) '())
        ((number? (first sent)) (se (repeat (first sent) (second sent)) (expand (bf (bf sent)))))
        (else (se (first sent) (expand (bf sent))))))