;; two
;; imlp even-p and odd-p

(define even-p
  (lambda (x)
    (if (= x 0) #t
	(odd-p (- x 1)))))

(define odd-p
  (lambda (x)
    (if (= x 0) #f
	(even-p (- x 1)))))
