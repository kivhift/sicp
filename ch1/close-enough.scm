(define (close-enough? x0 x1)
  (< (abs (- x0 x1)) tolerance))
