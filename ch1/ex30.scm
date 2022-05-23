; Exercise 1.30
(define (sum term a next b)
  (define (iter x result)
    (if (> x b)
      result
      (iter (next x) (+ result (term x)))))
  (iter a 0))
