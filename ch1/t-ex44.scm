; Test 1.44
(load "close-enough.scm")
(define tolerance 1e-5)

(define (ident x) x)

(define (tests-OK?)
  (and
    (close-enough? 1 ((smooth ident) 1))
    (close-enough? 2 ((smooth ident) 2))
    (close-enough? 2 ((smooth sqrt) 4))
    (close-enough? 4 ((smooth square) 2))
    (close-enough? 4 ((n-fold-smooth square 7) 2))
))
