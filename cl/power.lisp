
(defun power (x)
  (if (or (equal x 0) (equal x 1))
      1
      (power (- x 1))))

(defparameter ff 4)
(format t "~A ~%" (power ff))
