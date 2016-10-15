
;item -> item to remove, can be atom or list
;l -> list to remove from
(defun REMOVE-FIRST (item l)
	(cond
		((endp l) nil) ; end of list
		((equal item (first l)) (rest l)) ; if find, return rest
		(t (cons (first l) (REMOVE-FIRST item (rest l)))) ; cons head item and list
		))


(format t "Test for remove-first:~%")
(format t "~a~%" (REMOVE-FIRST 'a '(a b c a)))
(format t "~a~%"(REMOVE-FIRST 'b '(a b c b)))
(format t "~a~%" (REMOVE-FIRST 'c '(a b c c)))
(format t "~a~%" (REMOVE-FIRST '(a x) '(a b (a z )c (a x))))