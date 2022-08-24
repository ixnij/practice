;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname loop) (read-case-sensitive #t) (teachpacks ((lib "abstraction.rkt" "teachpack" "2htdp"))) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ((lib "abstraction.rkt" "teachpack" "2htdp")) #f)))
(andmap (λ (x) x)
(for/list ([k (build-list 20 (λ (x) x))]
           [p 20])
  (= k p)))
(for/list ([l "hello,world!"]
           [y "hello"])
  `(,l ,y))

(=
 (foldl
 (λ (x y) (+ x y))
 0
 (for/list ([k 20])
  k))
 (for/sum ([n 20]) n))

(define s "hello")
(string=?
 s
 (for/string ([k s]) k))

(define LIST--1
(for*/list ([i 5]
            [j 3])
  (list i j)))

(define LIST
(for/list ([i 5])
  (for/list ([j 3])
    (list i j))))
(define LIST-0
  
(for*/list ([i 2]
            [j '(a b)])
  (list i j)))
(define (f l)
  (cond [(empty? l) l]
        [else
         (append (first l)
                 (f (rest l)))]))
(equal? (f LIST)
        LIST--1) ; => #t
; generate ascii code to char list
(define ASCII-TABLE
  (for/list [(i 130)]
    (list i "is" (int->string i))))

(define (diag-rectangle n)
  (for/list ([i n])
    (for/list ([j n])
     (if (= i j) 1 0))))