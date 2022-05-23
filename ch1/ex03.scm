(define (square x)
  (* x x))

(define (sum-of-squares a b)
  (+ (square a) (square b)))

; Sum of squares of largest 2 of 3
(define (sosol2o3 a b c)
  (cond
    ((and (>= a b) (>= a c))
     (if (>= b c) (sum-of-squares a b) (sum-of-squares a c)))
    ((and (>= b a) (>= b c))
     (if (>= a c) (sum-of-squares a b) (sum-of-squares b c)))
    (else (if (>= a b) (sum-of-squares a c) (sum-of-squares b c)))))
