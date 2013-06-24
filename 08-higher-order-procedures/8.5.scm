(define (amazify name)
  (word 'the-amazing- name))

(define (transform-beatles procedure)
  (every procedure '(John Paul George Ringo)))