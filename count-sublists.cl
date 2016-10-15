
(defun COUNT-SUBLISTS (l)
	(cond 
		((endp l) 0)
		((listp (first l)) 
			(+ 1 (COUNT-SUBLISTS (rest l))))
		(T (COUNT-SUBLISTS (rest l)))
	)
	)

(format t "COUNT-SUBLISTS : ~%")
(format t "(COUNT-SUBLISTS '(A B (C D) (E F))) : ~a ~%"  (COUNT-SUBLISTS '(A B (C D) (E F))))
(format t "(COUNT-SUBLISTS '(A B )) :~a ~%"  (COUNT-SUBLISTS '(A B )))
(format t "(COUNT-SUBLISTS '(A B (C D (X Y)))) : ~a ~%"  (COUNT-SUBLISTS '(A B (C D (X Y)))))