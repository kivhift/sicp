; Test 1.32
(define (ident x) x)
(define (inc x) (+ x 1))
(define (tests-OK?)
  (and
    (= 55 (sum ident 1 inc 10))
    (= 120 (product ident 1 inc 5))
))
