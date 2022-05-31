; Exercise 1.36

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (println next)
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (average x y)
  (/ (+ x y) 2))

(println "Undamped:" (fixed-point (lambda (x) (/ (log 1000) (log x))) 2.0))
(println "Damped:" (fixed-point (lambda (x) (average x (/ (log 1000) (log x)))) 2.0))
; Eyeballing things, the un-damped version takes 35 iterations to reach an
; acceptable value versus 10 for the damped version.
