;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname YCombinator) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define eternity
  (lambda (x)
    (eternity x)))

(((λ (mk-length)
    (mk-length mk-length))
 (λ (mk-length)
   (λ (l)
     (cond
       [(empty? l) 0]
       [else (add1
              ((mk-length eternity)
               (cdr l)))])))) '(apples)) ; => 1
(define Y
  (λ (le)
    ((λ (f) (f f))
     (λ (f)
       (le (f f)))))) ; That's it.