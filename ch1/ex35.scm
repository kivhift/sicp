; Exercise 1.35

(define tolerance 0.00001)

(define (fixed-point f first-guess)
  (define (close-enough? v1 v2)
    (< (abs (- v1 v2)) tolerance))
  (define (try guess)
    (let ((next (f guess)))
      (if (close-enough? guess next)
          next
          (try next))))
  (try first-guess))

(define (average x y)
  (/ (+ x y) 2))

; We have that $\phi$ satisfies $\phi^2=\phi+1$ which implies that
; $\phi=1+{1\over\phi}$.  Adding $\phi$ to both sides to facilitate average
; damping, we have that $\phi=(\phi+1+{1\over\phi})/2$.
(define phi
  (fixed-point (lambda (x) (average x (+ 1 (/ 1 x)))) 1.0))
