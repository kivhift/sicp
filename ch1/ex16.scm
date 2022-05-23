; logarithmic b^n
(define (lexpt b n)
  (define (iter p x e)
    (cond
      ((zero? e) p)
      ((even? e) (iter (* p (square x)) (square x) (- (/ e 2) 1)))
      (else (iter (* p x) x (- e 1)))))
  (iter 1 b n))
