;; loop

(define -- (lambda (x) (- x 1)))

(let p-loop ((n 10))
  (if (= n 0) (display "Go!")
      (begin (display n)
	     (newline)
	     (p-loop (-- n)))))
