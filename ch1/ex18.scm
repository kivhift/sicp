(define (* a b)
  (define (iter s x y)
    (cond ((zero? y) s)
          ((even? y) (iter (+ s x x) (+ x x) (- (/ y 2) 1)))
          (else (iter (+ s x) x (- y 1)))))
  (iter 0 a b))