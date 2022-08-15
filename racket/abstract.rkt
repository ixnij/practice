;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname abstract) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Abstract

; [A B] [List-of A] [A -> B]
; -> [List-of B]
(check-expect (map1 '(1 2 3 4 5) add1)
              '(2 3 4 5 6))
(define (map1 l f)
  (cond [(empty? l) '()]
        [else
         (cons (f (first l))
               (map1 (rest l) f))]))

; [A B] [List-of A] [A -> B] A
; -> [List-of B]

(check-expect (fold1 '(1 2 3) + 0)
              6)
(define (fold1 l f v)
  (cond [(empty? l) v]
        [else
         (f (first l)
            (fold1 (rest l) f v))]))

(check-expect (sum1 '(12 3 230))
              (+ 12 3 230))
(define (sum1 lon)
  (fold1 lon + 0))

(check-expect (t-abs-inf '(12 3 4 5 34 -3124 3 39 12 4329 -123412 -39 -2 -1000000 2 10) <) -1000000)
(define (t-abs-inf l cmp)
  (cond [(empty? (rest l)) (first l)]
        [else (local ((define resres (t-abs-inf (rest l) cmp)))
                (if (cmp (first l) resres)
                    (first l) resres))]))