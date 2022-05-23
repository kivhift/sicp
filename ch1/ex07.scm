(define (good-enough? guess x)
  ;(display (/ (- guess (improve guess x)) guess)) (newline)
  (< (abs (/ (- guess (improve guess x)) guess)) 1e-10))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (improve guess x)
  (average guess (/ x guess)))

(define (average x y)
  (/ (+ x y) 2))

(define (~sqrt x)
  (sqrt-iter 1.0 x))
