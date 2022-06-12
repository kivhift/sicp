; Exercise 1.45
(define tolerance 1e-10)
(load "close-enough.scm")

; Code from the book.
(define (average x y)
  (/ (+ x y) 2))

(define (average-damp f)
  (lambda (x) (average x (f x))))

(define (fixed-point f first-guess)
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(load "ex43.scm") ; For repeated

(define (try-nth-root-of x n repeat-count)
  (fixed-point ((repeated average-damp repeat-count)
                (lambda (y) (println y ":")(/ x (expt y (- n 1)))))
               1.0))

(define (lb x) (/ (log x) (log 2)))
(define (average-damp-count-for n) (floor->exact (lb n)))
(define (nth-root-of x n)
  (fixed-point ((repeated average-damp (average-damp-count-for n))
                (lambda (y) (/ x (expt y (- n 1)))))
               1.0))
