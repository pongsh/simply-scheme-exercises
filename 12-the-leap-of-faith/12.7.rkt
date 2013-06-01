(define (spell-digit digit)
  (item (+ 1 digit)
	'(zero one two three four five six seven eight nine)))

(define (spell-number num)
  (if (empty? num)
      '()
      (se (spell-digit (first num)) (spell-number (bf num)))))