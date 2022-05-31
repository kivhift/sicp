; Exercise 1.39
(define (cont-frac n d k)
  (define (iter i)
    (if (> i k)
      0
      (/ (n i) (- (d i) (iter (+ i 1))))))
  (iter 1))

(define (tan-cf x k)
  (let ((x^2 (* x x)))
        (cont-frac
          (lambda (i) (if (> i 1) x^2 x))
          (lambda (i) (- (* 2 i) 1))
          k)))
