#!/usr/bin/env sbcl --script

(defun power (x)
  (if (or (= x 0) (= x 1)) 1
      (* x (power (- x 1)))))

(defconstant *ff* 20000)

(format t "~A ~%" (power *ff*))
