;; This buffer is for text that is not saved, and for Lisp evaluation.
;; To create a file, visit it with C-x C-f and enter text in its buffer.

(setq mac 44)
(setq ls (let* ((a 4) (b 3) (mac 4) (c mac))
	   (message "%d %d %d" a b c)))
(setq l (let ((a 4) (b 3) (mac 4) (c mac))
	  (message "%d %d %d" a b c)))
(if (equal l ls)
    (message "No")
  (message "Yes"))
(defun circle-area (radix)
  (let* ((pi 3.1415926)
	 (area (* pi radix radix)))
    (message "直径为 %.2f 的圆面积是 %.2f" radix area)))
(circle-area 4)
(defun circle-area (radix)
  (let ((pi 3.1415926)
	 (area (* pi radix radix)))
    (message "直径为 %.2f 的圆面积是 %.2f" radix area)))

(circle-area 4)
(when (/= 1 2)
  (message "hello")
  (message "GGG")
  (message "FF"))
(setq fn (lambda (&optional fc)
	   "This is a lambda function"
	   (or fc (setq fc 5))
	   (message "Hey, %s!" fc)))
(funcall fn)
(defconst mirror "$$$$$$sadf"
  "This is doc string.")

(funcall)
