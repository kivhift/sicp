; Test 1.46
(define (sqrt-OK? x)
  (close-enough? (sqrt x) (ii-sqrt x)))

; Adapted from ex1.35...
(define phi
  (ii-fixed-point (lambda (x) (average x (+ 1 (/ 1 x)))) 1.0))

(define (tests-OK?)
  (and
    (sqrt-OK? 2)
    (sqrt-OK? 13)
    (sqrt-OK? 144)
    (close-enough? phi (/ (+ 1 (sqrt 5)) 2))
    ; Just for fun...
    (close-enough? phi (/ (+ 1 (ii-sqrt 5)) 2))
))
