;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname ya) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
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

(require 2htdp/batch-io)
; SAAS is short for Self As a String
(define FILE-NAME "ya.rkt")
(define SAAS
  (read-words/line FILE-NAME
             ; Note that this file is stored as "ya.rkt"
             ))

; An LN is one of:
; – '()
; – (cons Los LN)
; interpretation a list of lines, each is a list of Strings

(define line0 (cons "hello" (cons "world" '())))
(define line1 '())

(define ln0 '())
(define ln1 (cons line0 (cons line1 '())))

; LN -> List-of-numbers
; determines the number of words on each line

(check-expect (words-on-line ln0) '())
(check-expect (words-on-line ln1) (cons 2 (cons 0 '())))

(define (words-on-line ln)
  (cond
    [(empty? ln) '()]
    [else (cons (length (first ln))
                (words-on-line (rest ln)))]))
(define (sum l)
  (cond [(empty? l) 0]
        [else (+ (first l) (sum (rest l)))]))

(define (sum.v2 l)
  (cond [(empty? l) 0]
        [else (+ (sum (first l))
                 (sum.v2 (rest l)))]))

; collapse
; LOL -> String
; where LOL like
; the result of function read-words/line

(define (collapse l)
  (cond [(empty? l) ""]
        [else (string-append (ds-l (first l)) "\n"
                             (collapse (rest l)))]))

(define (ds-l l)
  (cond [(empty? l) ""]
        [else (string-append (first l)
                             " "
                             (ds-l (rest l)))]))

; ra - remove all articles from a text file
; FileName -> SideEff
(define (ra fname)
  (write-file (string-append "no-articles-" fname) (pr# (read-words/line fname))))

(define (pr# l)
  (cond [(empty? l) ""]
        [else (string-append (pr## (first l)) "\n"
                             (pr# (rest l)))]))

(define (pr## l)
  (cond [(empty? l) ""]
        [else (string-append
               (if (or (string=? (first l) "a")
                      (string=? (first l) "an")
                      (string=? (first l) "the"))
                  ""
                  (string-append " " (first l)))
               (pr## (rest l)))]))

(define T "TTT.txt")

(define-struct editor [pre post])
; An Editor is a structure:
;   (make-editor Lo1S Lo1S)

; Sample Lo1S(short for List of 1Strings)
; one of below:
; - '()
; - (cons 1String Lo1S)

(define good (cons "g" (cons "o" (cons "o" (cons "d" '())))))
(define nice (cons "n" (cons "i" (cons "c" (cons "e" '())))))

; > (implode good)
; "good"

(define E1 (make-editor good nice))

(require 2htdp/image)
(define ET (empty-scene 500 20))
(define FONT-SIZE 20)
(define FONT-COLOR "black")
(define (txt s)
  (text s FONT-SIZE FONT-COLOR))

#;
(require 2htdp/universe)
#;
(define (main-a state)
  (big-bang state
    [on-key ...]
    [to-draw ...]))

; I have graduated from bsl from now on ;-)

