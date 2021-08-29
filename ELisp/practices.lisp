;;; Practices.lisp --- Just for practice

;;; Commentary:

;;; Code:

(defvar pr/foo "Just for a test. This variable named \"foo\"."
  "This is a document string. And this is a variable named \"foo\".")

(let ((foo 4) (bar 5))
  (+ foo bar))

(let ((foo pr/foo) (bar 4) (pr/foo 5))
  (format "%s %d %d" foo bar pr/foo))

(let* ((pr/foo 422) (foo pr/foo) (bar 4))
  (format "%s %d %d" foo bar pr/foo))

(funcall (lambda (one two)
	   (let ((foo one) (bar two))
	     (message (format "Okay, %d %d" foo bar)))) 4 55)

(funcall (lambda ()
	   (message "Hello.")))

(set 'afff (lambda (namef)
	     "This is ... function?"
	     (message (format "Ahh.. %s" namef))))

(funcall afff "2333")

;;; and == when, or == unless
(and nil 1)
(or nil (format "Hello"))
(or 0 (format "HGHH"))
(or () (format "HGHH"))

(defun nf (num)
  "Just for nf."
  )

(integerp 4)
(integerp 4.4)
(floatp 4.4)
(floatp 4)
(numberp 4)
(numberp 4123.34343421)
(wholenump 4)
(zerop 0)
(zerop 1234.)

(defvar tests/nu 344
  "This is a number for test function.")

(defvar tests/nu-two 3.33
  "This is a number for test function.")

(eql tests/nu tests/nu-two)
(random t)
(let ((rmb (random)))
  (message (format "This is your money: %d" (mod rmb 12))))



;;; Local Variables:
;;; coding: utf-8
;;; mode: emacs-lisp-mode
;;; End:

(provide 'practices)
;;; practices.lisp ends here
