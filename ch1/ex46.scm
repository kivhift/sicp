; Exercise 1.46
;
; Code from the book.
(define (average x y)
  (/ (+ x y) 2))

; Solution
(define tolerance 1e-8)
(load "close-enough.scm")

(define (iterative-improve good-enough? improve)
  (lambda (guess)
    (define (iter x)
      (if (good-enough? x)
        x
        (iter (improve x))))
    (iter guess)))

(define (ii-sqrt x)
  ((iterative-improve
    (lambda (guess) (close-enough? (square guess) x))
    (lambda (guess) (average guess (/ x guess))))
    1.0))

(define (ii-fixed-point f first-guess)
  ((iterative-improve (lambda (guess) (close-enough? guess (f guess))) f)
   first-guess))
