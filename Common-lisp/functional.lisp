(defun readlist (lst)
 (if (listp lst)
  (progn (format t "%~" (car lst))
   (readlist (cdr lst)))
  (format t "Error, It is not a list.")))

(defconstant *gl_lisp* '("Hello" "," " " "World" "!" 777))
(readlist *gl_lisp*)
