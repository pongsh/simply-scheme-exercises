(define (vowel? wd)
  (member? wd 'aeiou))

(keep vowel? 'birthday)

(every first '(golden slumbers))

(first '(golden slumbers))

(every last '(little child))

(accumulate word (every last '(little child)))

(every + '(2 3 4 5))

(accumulate + '(2 3 4 5))