; Didn't work because word is a name of the function
; and you are trying to use it as a variable name and
; function name at the same time.

(define (superlative adjective wd)
  (se (word adjective 'est) wd))