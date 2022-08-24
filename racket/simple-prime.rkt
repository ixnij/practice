#lang racket
(require rackunit)

; prime? : Integer -> Boolean
(define (prime? n)
  (andmap (λ (x) x)
          (for/list ([i (in-range 2 n)])
            (not (integer? (/ n i))))))
(check-true (prime? 23))
(check-true (prime? 2))
(check-true (prime? 3))
(check-true (prime? 5))
(check-true (prime? 7))
(check-true (prime? 11))
(check-true (prime? 13))
(check-false (prime? 20))
(check-false (prime? 22))
(check-false (prime? 21))
(check-false (prime? 25))
