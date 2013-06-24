(define (drop n wd)
  (if (= n 0)
      wd
      (drop (- n 1) (bf wd))))

(define (keep-first n wd)
  (if (= n 0)
      wd
      (keep-first (- n 1) (bl wd))))

(define (convert-0-to-10 num)
  (if (= num 0)
      '()
      (item num '(one two three four five six seven eight nine ten))))        

(define (convert-11-to-19 num)
  (item (- num 10) '(eleven twelve thirteen fourteen fifteen sixteen seventeen eighteen nineteen)))

(define (convert-tens num)
  (item num '(ten twenty thirty fourty fifty sixty seventy eighty ninety)))

(define (teen? num)
  (and (< 10 num) (< num 20)))

(define (allzero? num)
  (if (empty? num)
      #T
      (and (= 0 (first num)) (allzero? (bf num)))))         

(define (convert-under-hundred num)
  (cond ((empty? num) '())
        ((< num 10) (convert-0-to-10 num))
        ((teen? num) (convert-11-to-19 num))
        (else (se (convert-tens (first num)) (convert-under-hundred (bf num))))))

(define (convert-under-thousand num)
  (if (= num 0)
      '()
      (se (convert-0-to-10 (first num)) 'hundred (convert-under-hundred (bf num)))))

(define (convert-under-million num)
  (se (convert-under-thousand (keep-first 3 num)) 'thousand (convert-under-thousand (drop 3 num))))

(define (number-name num)
  (cond ((< num 100) (convert-under-hundred num))
        ((< num 1000) (convert-under-thousand num))
        ((< num 1000000) (convert-under-million num))))


(define (a num)
  (if (= num 0)
      '()
      (se (convert num) (a (- num 1)))))