(define (already-won? position me)
  (member? (word me me me) (find-triples position)))