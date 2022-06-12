; Test 1.43
(define (inc x) (+ x 1))
(define (tests-OK?)
  (and
    (= 625 ((repeated square 2) 5)) ; <-- from problem statement
    (= 5 ((repeated square 0) 5))
    (= 1337 ((repeated inc 1337) 0))
))
