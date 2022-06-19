; Test 2.1
(define (tests-OK?)
  (and
    (= (numer (make-rat 1 3)) (numer (make-rat -3 -9)))
    (= (denom (make-rat 1 3)) (denom (make-rat -3 -9)))
    (= 1 (numer (make-rat 3 9)))
    (= 3 (denom (make-rat 3 9)))
    (= 1 (numer (make-rat -3 -9)))
    (= -1 (numer (make-rat 3 -9)))
    (= -1 (numer (make-rat -3 9)))
    (= 0 (numer (make-rat 0 123)))
    (= 1 (denom (make-rat 0 123)))
))
