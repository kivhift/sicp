; Test 1.40
(define (tests-OK?)
  (and
    ; (x-0)(x-1)(x-2)
    (close-enough? (cubic-root -3. 2. 0.) 0.)
    ; (x-1)(x-2)(x-3)
    (close-enough? (cubic-root -6. 11. -6.) 1.)
    ; (x-13)(x-1)^2
    (close-enough? (cubic-root -15. 27. -13.) 1.)
))
