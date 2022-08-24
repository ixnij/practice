;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-lambda-reader.ss" "lang")((modname abstract) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(check-expect (compare-numstr "932"
                              "123")
              #t)
(check-expect (compare-numstr "23132"
                              "23")
              #t)
(check-expect (compare-numstr "4"
                              "23")
              #f)
(check-expect (compare-numstr "2"
                              "3")
              #f)
;(: compare-numstr (-> String String Boolean))
(define (compare-numstr left right)
  (local [(define LL (string-length left))
          (define LR (string-length right))]
    (cond [(> LL LR) #t]
          [(< LL LR) #f]
          [else (cmp left right LL LL)])))
;(: cmp (-> String String Natural Natural))
(define (cmp left right len l)
  (local [(define L (- l len))
          (define ln (string-ref left L))
          (define rn (string-ref right L))]
    (cond [(zero? (sub1 len)) (cmm ln rn)]                            
          [else (cond [(cmm ln rn) #t]
                      [(cmc ln rn) #f]
                      [else (cmp left right (sub1 len) l)])])))

; TODO
(check-expect (cmm #\1 #\2) #f)
(check-expect (cmm #\2 #\1) #t)
(define (m-c x y cmper)
  (cmper (char->integer x)
     (char->integer y)))
(define (cmm x y)
  (m-c x y >))
(define (cmc x y)
  (m-c x y <))
