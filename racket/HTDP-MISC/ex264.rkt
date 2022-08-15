;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname ex264) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Nelon -> Number
; determines the largest 
; number on l
(define (sup l)
  (cond
    [(empty? (rest l))
     (first l)]
    [else
     (if (> (first l)
            (sup (rest l)))
         (first l)
         (sup (rest l)))]))

; Nelon -> Number
; determines the largest 
; number on l
(define (sup-local l)
  (cond
    [(empty? (rest l))
     (first l)]
    [else
     (local
         ((define f (first l))
          (define r (rest l)))
       (if (> f
              (sup-local r))
           f
         (sup-local r)))]))

(sup-local '(2 1 3))