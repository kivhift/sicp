(define (abs-diff-OK x)
  (< (abs (- (sqrt x) (~sqrt x))) 1e-9))

(define (tests-OK?)
  (and
    (abs-diff-OK 2)
    (abs-diff-OK 1e-5)
    (abs-diff-OK 1e10)
))
