(define (hang-letter letter guesses)
  (if (member? letter guesses)
      letter
      '_))

(define (hang secret-word guesses)
  (accumulate word (every (lambda (x) (hang-letter x guesses)) secret-word)))