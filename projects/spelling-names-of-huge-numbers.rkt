; write function to extract numbers from between index a and b

(define (number-name num)
  (if (empty? num)
      '()
      (let ((converted-num (convert num)))
        (se converted-num (number-name (remaining num converted-num))))))

(define (convert-0-to-9 num)
  (if (= num 0)
      '()
      (item num '(one two three four five six seven eight nine))))        

(define (convert-11-to-19 num)
  (item (- num 10) '(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)))

(define (convert-tens num)
  (item (/ num 10) '(ten twenty thirty fourty fifty sixty seventy eighty ninety)))

(define (convert-wd-0-to-9 wd)
  (cond ((equal? wd 'zero) 0) ((equal? wd 'one) 1) ((equal? wd 'two) 2)
        ((equal? wd 'three) 3) ((equal? wd 'four) 4) ((equal? wd 'five) 5)
        ((equal? wd 'six) 6) ((equal? wd 'seven) 7) ((equal? wd 'eight) 8)
        ((equal? wd 'nine) 9)))

(define (teen? num)
  (and (< 10 num) (< num 20)))

(define (convert-under-hundred num)
  (cond ((< num 10) (convert-0-to-9 num))
        ((= num 10) 'ten)
        ((teen? num) (convert-11-to-19 num))
        (else (se (convert-tens (* (first num) 10)) (convert-under-hundred (bf num))))))

(define (convert-under-thousand num)
  (se (convert-0-to-9 (first num)) 'hundred (convert-under-hundred (bf num))))

(define million 1000000)

(define (convert-under-million num)
  (cond ((< num 10000) (se (convert-0-to-9 (first num)) 'thousand (convert-under-thousand (bf num))))
        ((< num 1000000) (se (convert-under-thousand (word (first num) (first (bf num)) (first (bf (bf num))))) 'thousand (convert-under-thousand (bf (bf (bf num))))))))
   
(define (convert num)
  (cond ((< num 100) (convert-under-hundred num))
        ((< num 1000) (convert-under-thousand num))
        ((< num million) (convert-under-million num))))


(define (a num)
  (if (= num 0)
      '()
      (se (convert num) (a (- num 1)))))