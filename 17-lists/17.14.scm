;; Implemented with index starting from 1 as stated in the book.
;; list-ref uses 0 index which explains the modification needed.

(define (branch lst-num lst)
  (if (null? lst-num)
      lst
      (branch (cdr lst-num) (list-ref lst (- (car lst-num) 1)))))