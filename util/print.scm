; Print args with spaces in between and a newline at the end.
;
; Inspired by:
; https://stackoverflow.com/questions/26539585/how-to-display-multiple-parameters-in-r5rs-scheme
(define (println . args)
  (define (iter x)
    (cond
      ((null? x) (newline))
      ((null? (cdr x)) (display (car x)) (newline))
      (else (display (car x)) (display " ") (iter (cdr x)))))
  (iter args))
