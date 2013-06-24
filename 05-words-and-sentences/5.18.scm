(define (ends word)
  (word (first word) (last word)))

(ends 'john)

; Word is the name of a function so it can't be used as a parameter name.
; In the function it is expecting the argument to be the function word but
; gets values instead.