;;; Practices.lisp --- Just for practice  -*- lexical-binding: t; -*-

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

(symbolp 1+)
(symbolp '1+)
(symbolp '+1)

(cons 1 2)
(cons 1 '(1 2))
'macro
(intern-soft "macro")
(unintern "macro")
(intern-soft "macro")
(setq var 0)
(mapatoms (lambda (s)
	    (let ((cnt 0))
	      (set 'cnt (1+ cnt)))))
(defun mr (s)
(setq var (1+ var)))

(mapatoms 'mr)
(print var)
(intern-soft "obarray")
(length obarray)

(apply '+ 1 2 '(3 4))

(setq pre/my-local-variable (make-vector 5 34))

(message (format "This is the local variable that defined by myself: %d" (nth 0 pre/my-local-variable)))

;; test back quote

'(+ 1 43)
'(1 2 3 (+ 1 2))
`(1 2 3)
`(1 2 3 (+ 1 2) (1+ 2O))
'(1234 1243 (+ 122 3) (1+ 4) (\ 1 1))
`(1 2 3 ,(+ 1 2) ,@(+ 1 2 3))

(defmacro my-wh (cond &rest body)
  "This is a Lisp Macro, not a function."
  `(if ,cond
       (progn ,@body)))

(my-wh (equal 1 1) (message "Yes"))

(macroexpand (my-wh (equal 1 1) (message "Yes")))

(when (equal 1 1) (message "Yes"))

(defmacro my-unless (cond &rest body)
  "This is a Lisp Macro. Using `or'

\(fn COND BODY...)"
  `(and ,cond (progn ,@body)))

(my-unless (equal 1 1)
	   (message "Yes"))

(eq 1 1)
(eq 1.02 1.1)
(eq 1.0 1.1)

(eq 1.0 1)
(equal 1.0 1)

(string= "Hello" "Hello")

(string> "a" "Z") ; ASCII code

(equal "Hello" "Hello")

(defun switch-buffers-f ()
  (interactive)
  (with-current-buffer (erase-buffer)
    (insert "Hello, World!")))

(cons 1 2)
'(1 . 2)
'(1 . (2 . (3 . (4 . (5 . nil)))))

(cons 1 (cons 2 (cons 3 4)))
(list 1 2 3 4)
(car (list 1 2 3 4))
(cdr (list 1 2 3 4))
(setq ls (read))
(unintern "ls")
(intern-soft "ls")

(defmacro have-a-macro (&rest body)
  `(progn (message "Begin a new line:")
	  ,@body
	  (message "End:")))

(macroexpand (have-a-macro (message "Hello")))

(have-a-macro
 (message "Hello"))

(defun res ()
  '(hello))

(setq pr/helo (res))
'helo

;; mistakes

(defun res2 ()
  `(hello))

(setq pr/helo2 (res2))
'pr/helo2
(message (format "%S" ps/helo2))

;; (defmacro yet-another-funcall ())

(defun hello ()
  (message "Hello"))

(funcall (function hello))

;; end.

;;; Local Variables:
;;; coding: utf-8
;;; mode: emacs-lisp
;;; End:

(provide 'practices)
;;; practices.lisp ends here
