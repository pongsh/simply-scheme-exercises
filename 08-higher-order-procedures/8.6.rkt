; There's probably a better way to do with a dictionary.

(define (phonetic-alphabet letter)
  (cond ((equal? letter 'a) 'alfa)
        ((equal? letter 'b) 'bravo)
        ((equal? letter 'c) 'charlie)
        ((equal? letter 'd) 'delta)
        ((equal? letter 'e) 'echo)
        ((equal? letter 'f) 'golf)
        ((equal? letter 'g) 'hotel)))

(define (words wds)
  (every phonetic-alphabet wds))