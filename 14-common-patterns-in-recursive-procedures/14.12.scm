(define (second wd)
  (first (bf wd)))

(define (square n)
  (* n n))

(define (progressive-squares? sent)
  (if (= (count sent) 1) 
      #T
      (if (= (square (first sent)) (second sent)) 
          (progressive-squares? (bf sent))
          #F)))
         