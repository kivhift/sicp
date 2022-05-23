(define (good-enough? guess x)
  ;(display (/ (- guess (improve guess x)) guess)) (newline)
  (< (abs (/ (- guess (improve guess x)) guess)) 1e-10))

(define (root-iter guess x)
  (if (good-enough? guess x)
          guess
          (root-iter (improve guess x)
                     x)))

(define (improve guess x)
  (/ (+ (* 2 guess) (/ x (square guess))) 3))

(define (root x)
  (root-iter 1.0 x))
