(define (fib n)
  (define (iter a b p q count)
    (cond ((zero? count) b)
          ((even? count)
           (iter a
                 b
                 (+ (square p) (square q))
                 (+ (square q) (* 2 p q))
                 (/ count 2)))
          (else (iter (+ (* b q) (* a q) (* a p))
                      (+ (* b p) (* a q))
                      p
                      q
                      (- count 1)))))
  (iter 1 0 0 1 n))
