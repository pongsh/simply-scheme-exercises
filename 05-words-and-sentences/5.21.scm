(define (second st)
  (first (bf st)))

(define (query st)
  (sentence (second st) (first st) (bf (bf st)) '?))