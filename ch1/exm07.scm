; Returns smallest e such that b^e > n
(define (power-close-to b n)
  (define (iter b^e e)
    (if (> b^e n)
      e
      (iter (* b b^e) (+ e 1))))
  (iter 1 0))
