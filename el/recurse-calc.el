;; -*- lexical-binding: t; -*-

(defun calc (x)
  (if (or (= x 1) (= x 0)) 1
    (* x (calc (- x 1)))))

(defun fab (x)
  )

(calc 4)
