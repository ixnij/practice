;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname abstract) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
; Abstract

; [A B] [List-of A] [A -> B]
; -> [List-of B]
(check-expect (map1 '(1 2 3 4 5) add1) '(2 3 4 5 6))
(define (map1 l f)
  (cond
    [(empty? l) '()]
    [else (cons (f (first l)) (map1 (rest l) f))]))

; [A B] [List-of A] [A -> B] A
; -> [List-of B]

(check-expect (fold1 '(1 2 3) + 0) 6)
(define (fold1 l f v)
  (cond
    [(empty? l) v]
    [else (f (first l) (fold1 (rest l) f v))]))

(check-expect (sum1 '(12 3 230)) (+ 12 3 230))
(define (sum1 lon)
  (fold1 lon + 0))

(check-expect (t-abs-inf '(12 3 4 5 34 -3124 3 39 12 4329 -123412 -39 -2 -1000000 2 10) <) -1000000)
(define (t-abs-inf l cmp)
  (cond
    [(empty? (rest l)) (first l)]
    [else
     (local ((define resres (t-abs-inf (rest l) cmp)))
            (if (cmp (first l) resres) (first l) resres))]))

; λ lambda!

(define (res-is-f x)
  (local [(define (f x)
            add1)]
         f))
(check-expect (((res-is-f 1) 1) 99) 100)

; bl:
; N+ -> [List-of Number]
; BuildList
(check-expect (bl 5) '(1 2 3 4 5))
(define (bl n)
  (local ((define (blz n)
            (cond
              [(zero? (sub1 n)) (list n)]
              [else (cons n (blz (sub1 n)))])))
         (reverse (blz n))))
; exactly, it equals to the function below
(define (bl.v2 n)
  (build-list n add1))

(check-expect (exe270.3 5) '(1/1 1/2 1/3 1/4 1/5))

(define (exe270.3 n)
  (local ((define (aux n0)
            (/ 1 (add1 n0))))
         (build-list n aux)))

(check-expect (append-from-fold '(1 2 3) '(4 5 6)) '(1 2 3 4 5 6))

; append-from-fold:
; List List -> List
; where List = [List-of Any]
(define (append-from-fold l0 l1)
  (local ; the signature:
         ; [X] X [List-of X] -> [List-of X]
         ((define (aux x y)
            (cons x y)))
         ; Yes, as you can see, aux == cons.
         ; So, you can write this down:
         ; (foldr cons l1 l0)
         ; the result equals to below
         ; we can't use foldl in this case
         (foldr aux l1 l0)))

(check-expect (dia-m 3) '((1 0 0) (0 1 0) (0 0 1)))
(define (dia-m n)
  (build-list n (lambda (x) (build-list n (lambda (y) (if (= x y) 1 0))))))

(check-expect (map-fold add1 (build-list 20 (λ (x) x))) (map add1 (build-list 20 (λ (x) x))))
(check-expect (map-fold sub1 (build-list 20 (λ (x) x))) (map sub1 (build-list 20 (λ (x) x))))
(check-expect (map-fold (λ (x) (* 1 x)) (build-list 20 (λ (x) x)))
              (map (λ (x) (* 1 x)) (build-list 20 (λ (x) x))))
(define (map-fold f l)
  (foldr (λ (x l) (cons (f x) l)) '() l))
