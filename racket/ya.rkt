;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname ya) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(define tl (cons #true '()))
(define tl1 (cons #false '()))
(define tl2 (cons #true (cons #false '())))

; SL is one of:
; - '()
; - (cons Boolean SL)
; SL -- Sample List
; just for checking functions.

; SL -> Boolean

(check-expect (one-true tl) #true)
(check-expect (one-true tl1) #false)
(check-expect (one-true tl2) #true)

(define (one-true l)
  (cond [(empty? l) #false]
        [else (if (first l)
                  #true
                  (one-true (rest l)))]))
; SL -> Boolean
; treat empty as true

(check-expect (all-true tl) #true)
(check-expect (all-true tl1) #false)
(check-expect (all-true tl2) #false)

(define (all-true l)
  (cond [(empty? l) #true]
        [else (if (first l)
                  (all-true (rest l))
                  #false)]))

; let's impl cat.

; List-of-string -> String
; concatenates all strings in l into one long string
 
(check-expect (cat '()) "")
(check-expect (cat (cons "a" (cons "b" '()))) "ab")
(check-expect
  (cat (cons "ab" (cons "cd" (cons "ef" '()))))
  "abcdef")
 
(define (cat l)
  (cond
    [(empty? l) ""]
    [else (string-append (first l) (cat (rest l)))]))

; NE is one of:
; - (cons Any '())
; - (cons Any NE)

(check-expect (sorted>? (cons 1
  (cons 2
    '()))) #false)
(check-expect (sorted>? (cons 0
  (cons 3
    (cons 2
      '())))) #false)
(check-expect (sorted>?(cons 3
  (cons 2
    '()))) #true)

; Note that sorted>? is designed for NE List,
; which means that:
; NE is one of:
; - ... NE
; - ... NE

(define (sorted>? l)
  (cond [(empty? (rest l)) #true]
        [else (and (sorted>? (rest l))
                   (> (first l) (first (rest l))))]))

; N
; - 0
; - (add1 N)

; multiply
; forall. x,y (multiply x y) == (* x y)
; where x is belong to N

(check-expect (multiply 100 2003) (* 100 2003))

(define (multiply x y)
  (cond [(zero? x) 0]
        [else (+ y (multiply (sub1 x) y))]))

; RD is one of:
; - String
; - (make-layer String RD)

(define-struct layer [color rd])

(check-expect (colors (make-layer "yellow" (make-layer "green" "red")))
              "yellow, green, red")
(check-expect (inner (make-layer "yellow" (make-layer "green" "red"))) "red")

(define (colors rd)
  (cond [(string? rd) rd]
        [else (string-append (layer-color rd) ", "
                      (colors (layer-rd rd)))]))

(define (inner rd)
  (cond [(string? rd) rd]
        [else (inner (layer-rd rd))]))

; String String List -> List
; substitute is a replacer which replaces given old to new in l.
(check-expect (substitute "os" "ls"
              (cons "os" (cons "33" (cons "aa"
                                          (cons "os" '())))))
              (cons "ls" (cons "33" (cons "aa"
                                          (cons "ls" '())))))
(define (substitute old new l)
  (cond [(empty? l) l]
        [else (cons (if (string=? (first l) old)
                        new
                        (first l))
               (substitute old new (rest l)))]))

; ListOfPosns -> Posn

(check-expect (translate (cons (make-posn 1 2)
                               (cons
                                (make-posn 2 3)
                                (cons
                                 (make-posn 3 4)
                                 '()))))
              (cons (make-posn 1 3)
                               (cons
                                (make-posn 2 4)
                                (cons
                                 (make-posn 3 5)
                                 '()))))

(define (translate pl)
  (cond [(empty? pl) pl]
        [else (cons (trr (first pl))
                    (translate (rest pl)))]))

; Posn -> Posn
; do what add1 do, but only apply in posn-y
(define (trr p)
  (make-posn (posn-x p)
             (add1 (posn-y p))))

; ListOfPosns -> LegalListOfPosns
; LegalListOfPosns: the element of the list are posns,
; and the their posn-xs belong to [0, 100]
; their posn-ys belong to [0, 200]

(check-expect (legal (cons (make-posn 1 2)
                           (cons
                            (make-posn 2 33)
                            (cons
                             (make-posn 2311 2)
                             (cons
                              (make-posn 2000 2000)
                              (cons
                               (make-posn 101 201)
                              (cons
                               (make-posn 23 2001)
                               '())))))))
              (cons (make-posn 1 2)
                           (cons
                            (make-posn 2 33)
                            '())))

(define (legal l)
  (cond [(empty? l) '()]
        [(cons? l)
         (if (cl (first l))
             (cons (first l) (legal (rest l)))
             (legal (rest l)))]))

; Posn -> Boolean
; check for contract of posns

(define (cl p)
  (and (<= 0 (posn-x p) 100)
       (<= 0 (posn-y p) 200)))

(define-struct phone [area switch four])
; A Phone is a structure: 
;   (make-phone Three Three Four)
; A Three is a Number between 100 and 999. 
; A Four is a Number between 1000 and 9999. 

; LOP is short for List Of Phones
; LOP -> LOP

(define testLOP
  (cons (make-phone 713 333 333)
        (cons (make-phone 222 232 452)
              (cons (make-phone 713 234 943) '()))))
(check-expect (replace testLOP)
              (cons (make-phone 281 333 333)
        (cons (make-phone 222 232 452)
              (cons (make-phone 281 234 943) '()))))

(define (replace l)
  (cond [(empty? l) l]
        [(cons? l)
         (cons (if (= (phone-area (first l)) 713)
                   (make-phone
                    281
                    (phone-switch (first l))
                    (phone-four (first l)))
                   (first l))
               (replace (rest l)))]))