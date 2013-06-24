; Returns value of the card.
(define (card-val card)
  (let ((rank (last card)))
    (cond ((equal? rank 'a) 4)
          ((equal? rank 'k) 3)
          ((equal? rank 'q) 2)
          ((equal? rank 'j) 1)
          (else 0))))

; Returns total number of points from high cards in a hand.
(define (high-card-points hand)
  (accumulate + (every card-val hand)))

; Returns number of cards in the hand with a given suit.
(define (count-suit suit hand)
  (count (keep (lambda (x) (equal? suit (first x))) hand)))

; Returns a sentence containing the number of spades, hearts, clubs and diamonds in a hand.
(define (suit-counts hand)
  (every (lambda (x) (count-suit x hand)) 'shcd))

; Returns the number of distribution points for having a certain number of cards with the same suit.
(define (suit-dist-points num)
  (cond ((= 2 num) 1)
        ((= 1 num) 2)
        ((= 0 num) 3)
        (else 0)))

; Returns the distrubtion points the hand is worth.
(define (hand-dist-points hand)
  (accumulate + (every suit-dist-points (suit-counts hand))))

; Returns the total value of the hand.
(define (bridge-val hand)
  (+ (hand-dist-points hand) (high-card-points hand)))