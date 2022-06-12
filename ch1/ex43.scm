; Exercise 1.43
(define (repeated f n)
  (lambda (x)
    (define (iter i result)
      (if (= i n)
        result
        (iter (+ i 1) (f result))))
    (iter 0 x)))
