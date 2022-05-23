; Test 1.30
(define (ident x) x)
(define (inc x) (+ x 1))
(define (tests-OK?)
  (and
    (= 55 (sum ident 1 inc 10))
    (= 3025 (sum cube 1 inc 10))
))
