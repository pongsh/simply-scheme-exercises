(define (three-arg-accumulate combiner base-value stuff)
  (if (empty? stuff)
      base-value
      (combiner (first stuff) (three-arg-accumulate combiner base-value (bf stuff)))))