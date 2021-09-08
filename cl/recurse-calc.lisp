(defun hello (x)
  (format t "Hello, ~A!~%" x))

(hello "Name")

(defun calc (num)
  (if (or (= num 1) (= num 0)) 1
      (* num (calc (- num 1)))))

(format t "#+Result: ~A~%" (calc 3))
