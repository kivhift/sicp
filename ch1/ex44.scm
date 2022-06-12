; Exercise 1.44
(define dx 0.00001)
(define (smooth f)
  (lambda (x)
    (/ (+ (f (- x dx)) (f x) (f (+ x dx))) 3)))

(load "ex43.scm") ; For repeated
(define (n-fold-smooth f n)
  (lambda (x) (((repeated smooth n) f) x)))
