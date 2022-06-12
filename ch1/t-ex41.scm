; Test 1.41
(define (inc x) (+ x 1))
(define (tests-OK?)
  (and
    (= 1 ((double inc) -1))
    (= 2 ((double inc) 0))
    (= 21 (((double (double double)) inc) 5))
))
