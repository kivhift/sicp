; Test 1.42
(define (tests-OK?)
  (and
    (= 49 ((compose square inc) 6))
))
