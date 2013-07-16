(define (tie-game? position)
    (and (<= (appearances '_ position) 2)
         (neither-has-won position)
         (neither-can-win position)))

(define (neither-has-won position)
  (and (not (already-won? position 'x))
       (not (already-won? position 'o))))

(define (neither-can-win position)
  (let ((triples (find-triples position)))    
    (not (i-can-win? triples (current-player position)))))

(define (current-player position)
  (if (> (appearances 'o position) (appearances 'x position))
      'x
      'o))