; Exercise 1.37
(define (cont-frac n d k)
  (define (iter i)
    (if (> i k)
      0
      (/ (n i) (+ (d i) (iter (+ i 1))))))
  (iter 1))

(define phi (/ (+ 1 (sqrt 5)) 2))
