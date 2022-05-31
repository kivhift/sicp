; Exercise 1.38
(define (cont-frac n d k)
  (define (iter i)
    (if (> i k)
      0
      (/ (n i) (+ (d i) (iter (+ i 1))))))
  (iter 1))

(define e (+ 2 (cont-frac
                 (lambda (i) 1.0)
                 (lambda (i) (if (= (remainder i 3) 2)
                               (* (/ (+ i 1) 3) 2)
                               1))
                 8)))
