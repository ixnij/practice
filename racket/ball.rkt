;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-abbr-reader.ss" "lang")((modname ball) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/universe)
(require 2htdp/image)

(define RAD 20)
(define SCENE-X 700)
(define SCENE-Y 500)

(define ET (empty-scene SCENE-X SCENE-Y))
(define BALL (circle RAD "solid" "red"))
(define-struct ball [x y sx sy])

(define (ball-main s)
  (big-bang
   s
   [to-draw ball-render]
   [on-tick ball-tick 0.00001]))

(define (ball-render s)
  (place-image BALL (ball-x s)
               (ball-y s)
               ET))

(define (ball-tick s)
  (cond [(= (ball-x s) (- SCENE-X RAD)) (make-ball (sub1 (ball-x s)
                                             )
                                       (ball-y s)
                                       "left"
                                       (ball-sy s))
                            ]
        [(= (ball-y s) (- SCENE-Y RAD)) (make-ball (ball-x s)
                                       (sub1 (ball-y s)
                                             )
                                       (ball-sx s)
                                       "up")]
        [(= (ball-x s) RAD) (make-ball (add1 (ball-x s)
                                             )
                                       (ball-y s)
                                       "right"
                                       (ball-sy s))
                            ]
        [(= (ball-y s) RAD) (make-ball (ball-x s)
                                       (add1 (ball-y s)
                                             )
                                       (ball-sx s)
                                       "down")]

        [else (make-ball (px s)
                         (py s)
                         (ball-sx s)
                         (ball-sy s))]))

(define (px s)
  (cond [(string=? (ball-sx s) "right")

         (+ (ball-x s) 1)]
        [else
         (- (ball-x s) 1)]))

(define (py s)
  (cond [(string=? (ball-sy s) "down")
         (+ (ball-y s) 1)]
        [else
         (- (ball-y s) 1)]))

(ball-main (make-ball 3 0 "right" "down"))
