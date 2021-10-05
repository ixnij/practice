(define inner/x 20)

(define (++ x) (+ x 1))

(define (get-the-num x) 
  (if (or (= x 1) (= x 0))
      1
      (* x (get-the-num (- 1 x)))))

;; This is a test lisp file.
