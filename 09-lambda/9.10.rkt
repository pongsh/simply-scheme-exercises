(define (apperances arg1 arg2)
  (count (keep (lambda (x) (member? arg1 x)) arg2)))