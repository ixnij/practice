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

(setq docstring "This is a string for test.")

(defvar tests/foo-string "abc\000abc" docstring)

?A ; => 65
(- ?z ?a) ; => 25
(- ?z ?a) ; => same as above.
?\. ; => 46
?\( ; => 40
?\) ; => 41
?\* ; => 42
?\# ; => 35
?i ; => 105
?\C-i ; => 9

(concat "hello" "," " " "world")
(vconcat tests/foo-string)

(downcase "The cat in the hat")         ; => "the cat in the hat"
(downcase ?X)                           ; => 120
(upcase "The cat in the hat")           ; => "THE CAT IN THE HAT"
(upcase ?x)                             ; => 88
(capitalize "The CAT in tHe hat")       ; => "The Cat In The Hat"
(upcase-initials "The CAT in the hAt")  ; => "The CAT In The HAt"

(substring "Haskell-mode" 0 7) ; expected: Haskell

(cons 'a 'b)
'(a . b)
(consp '(a . b))
(consp '(1 . 2))
(listp '(1243 . nil))
(consp '(1 2 . (3 . 4)))
'(1 2 . (3 . 4))
'(1 2 3 4)

(set (quote mirs) nil)
(setq mirs (vector 1 2 3 4 6 5))
(aref mirs 5)

(let ((count 5)) (idx 0))
  (while (< idx count)
    (message (format "This is the %d times.\n" (1+ idx)))
    (setq idx (1+ idx))))

(symbolp 1+)
(symbolp '1+)
(symbolp '+1)

;;; Local Variables:
;;; coding: utf-8
;;; mode: emacs-lisp
;;; End:

(provide 'practices)
;;; practices.lisp ends here
