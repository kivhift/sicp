; Test 1.28
(define (tests-OK?)
  (and
    (fast-prime? 3 10)
    (fast-prime? 5 10)
    (fast-prime? 17 10)
    (not (fast-prime? 33 10))
    (not (fast-prime? 1024 10))
    (fast-prime? 1279 10)
))
