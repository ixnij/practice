;; loops

(let loops ((n 10))
  (if (= n 0)
      (newline)
      (begin (* n (loops (- n 1)))
	     (display n)
	     (newline))))
